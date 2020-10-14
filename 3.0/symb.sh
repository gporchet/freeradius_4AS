ARRAY_mods_enabled=(always
attr_filter
cache_eap
chap
detail
detail.log
digest
dynamic_clients
eap
echo
exec
expiration
expr
files
linelog
logintime
mschap
ntlm_auth
pap
passwd
preprocess
radutmp
realm
replicate
soh
sradutmp
unix
unpack
utf8)

for i in "${ARRAY_mods_enabled[@]}"
do
	ln -s mods-available/$i mods-enabled/$i
done

ARRAY_sites_enabled=(default
inner-tunnel)
ln -s sites-available/default sites-enabled/default
ln -s sites-available/inner-tunnel sites-enabled/inner-tunnel

ln -s mods-config/preprocess/hints hints
ln -s mods-config/preprocess/huntgroups huntgroups
ln -s mods-config/files/authorize users

