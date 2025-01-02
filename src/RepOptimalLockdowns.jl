module RepOptimalLockdowns

# export the final function
export run


########################################################################################################
################### Prepare the workfolder in order to save our intermediate results ###################
########################################################################################################
using FilePathsBase

# check if the folder exists and create or overwrite it
function create_or_overwrite_folder(folder_paths::Vector{String})
    for folder_path in folder_paths
        # check if the folder exists
        if isdir(folder_path)
            # if exists, remove it
            rm(folder_path; force=true, recursive=true)
        end
        # create the new folder
        mkdir(folder_path)
    end
end

# write the function to create all the folders
function create_my_folders()
    # first, create the work folder
    mywork_folder_path = "lockdown"

    # second, create the subfolders whose function is to save the intermediate and final results
    subfolder_path_models = joinpath(mywork_folder_path, "models")            # lockdown/models
    subfolder_path_figs = joinpath(mywork_folder_path, "figs")                # lockdown/figs
    subfolder_path_summaryres = joinpath(mywork_folder_path, "summaryres")    # lockdown/summaryres
    subfolder_path_results = joinpath(mywork_folder_path, "results")          # lockdown/results 
    create_or_overwrite_folder([
        mywork_folder_path,
        subfolder_path_models,
        subfolder_path_figs,
        subfolder_path_summaryres,
        subfolder_path_results
    ])
end

########################################################################################################
########################################################################################################
########################################################################################################








# the main function
function run()
    # create the folders
    create_my_folders()
end

end # module RepOptimalLockdowns
