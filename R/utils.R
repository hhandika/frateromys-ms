# Heru Handika
# Utility function share across dataset.

save_morph <- function(fnames) {
  here("data", "morphology", fnames)
}

save_ext <- function(fname) {
  ggsave(here("figures", fname), width = 7, height = 4)
  system(paste("Powershell.exe Start ", here("figures", fname)))
}

save_skull <- function(fname) {
  ggsave(here("results", "figures", fname), width = 7, height = 4)
  system(paste("Powershell.exe Start ", here("figures", fname)))
}

save_plot <- function(dir = "results/figures", fname, .width = 7, .height = 4) {
  ggsave(here(dir, fname), width = .width, height = .height)

  if (is_windows()) {
    system(paste("Powershell.exe Start ", here(dir, fname)))
  } else {
    system(paste("open ", here(dir, fname)))
  }
}

is_windows <- function() {
  Sys.info()[["sysname"]] == "Windows"
}

save_bp <- function(fname, .width = 8, .height = 4) {
  ggsave(here("figures", fname), width = .width, height = .height)
  system(paste("Powershell.exe Start ", here("figures", fname)))
}
