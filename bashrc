
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Modular bashrc
for file in $HOME/.bashrc.d/public/*.sh; do
    source "$file"
done

# Private: project/company related, not committed
for file in $HOME/.bashrc.d/private/*.sh; do
    source "$file"
done
