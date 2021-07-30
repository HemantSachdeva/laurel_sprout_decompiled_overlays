.class public final Ldtu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldts;


# static fields
.field public static final a:Lccv;

.field public static final b:Lccv;

.field public static final c:Lccv;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v0, Lcct;

    .line 1
    const-string v1, "com.google.android.apps.pixelmigrate"

    invoke-static {v1}, Lcck;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcct;-><init>(Landroid/net/Uri;)V

    .line 2
    const-string v1, "Eu8__backup_allow_work_profile_setup_any_gms_version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Ldtu;->a:Lccv;

    .line 3
    const-string v1, "Eu8__backup_android_separate_video_and_picture_flavors"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    :try_start_0
    const-string v1, "Eu8__backup_android_video_file_extensions"

    const/16 v3, 0x7b

    new-array v3, v3, [B

    const/16 v4, 0xa

    aput-byte v4, v3, v2

    const/4 v5, 0x1

    const/4 v6, 0x4

    aput-byte v6, v3, v5

    const/4 v7, 0x2

    const/16 v8, 0x2e

    aput-byte v8, v3, v7

    const/4 v7, 0x3

    const/16 v9, 0x6d

    aput-byte v9, v3, v7

    const/16 v10, 0x70

    aput-byte v10, v3, v6

    const/16 v11, 0x34

    const/4 v12, 0x5

    aput-byte v11, v3, v12

    const/4 v13, 0x6

    aput-byte v4, v3, v13

    const/4 v13, 0x7

    aput-byte v6, v3, v13

    const/16 v13, 0x8

    aput-byte v8, v3, v13

    const/16 v13, 0x9

    const/16 v14, 0x33

    aput-byte v14, v3, v13

    const/16 v13, 0x67

    aput-byte v13, v3, v4

    const/16 v15, 0xb

    aput-byte v10, v3, v15

    const/16 v15, 0xc

    aput-byte v4, v3, v15

    const/16 v15, 0xd

    aput-byte v7, v3, v15

    const/16 v7, 0xe

    aput-byte v8, v3, v7

    const/16 v7, 0xf

    const/16 v15, 0x74

    aput-byte v15, v3, v7

    const/16 v7, 0x10

    const/16 v16, 0x73

    aput-byte v16, v3, v7

    const/16 v7, 0x11

    aput-byte v4, v3, v7

    const/16 v7, 0x12

    aput-byte v12, v3, v7

    const/16 v7, 0x13

    aput-byte v8, v3, v7

    const/16 v7, 0x14

    const/16 v17, 0x77

    aput-byte v17, v3, v7

    const/16 v7, 0x15

    const/16 v18, 0x65

    aput-byte v18, v3, v7

    const/16 v7, 0x16

    const/16 v19, 0x62

    aput-byte v19, v3, v7

    const/16 v7, 0x17

    aput-byte v9, v3, v7

    const/16 v7, 0x18

    aput-byte v4, v3, v7

    const/16 v7, 0x19

    aput-byte v6, v3, v7

    const/16 v7, 0x1a

    aput-byte v8, v3, v7

    const/16 v7, 0x1b

    aput-byte v9, v3, v7

    const/16 v7, 0x1c

    const/16 v19, 0x6b

    aput-byte v19, v3, v7

    const/16 v7, 0x1d

    const/16 v19, 0x76

    aput-byte v19, v3, v7

    const/16 v7, 0x1e

    aput-byte v4, v3, v7

    const/16 v7, 0x1f

    aput-byte v6, v3, v7

    const/16 v7, 0x20

    aput-byte v8, v3, v7

    const/16 v7, 0x21

    aput-byte v9, v3, v7

    const/16 v7, 0x22

    aput-byte v10, v3, v7

    const/16 v7, 0x23

    aput-byte v13, v3, v7

    const/16 v7, 0x24

    aput-byte v4, v3, v7

    const/16 v7, 0x25

    aput-byte v6, v3, v7

    const/16 v7, 0x26

    aput-byte v8, v3, v7

    const/16 v7, 0x27

    aput-byte v9, v3, v7

    const/16 v7, 0x28

    const/16 v20, 0x6f

    aput-byte v20, v3, v7

    const/16 v7, 0x29

    const/16 v21, 0x64

    aput-byte v21, v3, v7

    const/16 v7, 0x2a

    aput-byte v4, v3, v7

    const/16 v7, 0x2b

    aput-byte v6, v3, v7

    const/16 v7, 0x2c

    aput-byte v8, v3, v7

    const/16 v7, 0x2d

    aput-byte v9, v3, v7

    aput-byte v9, v3, v8

    const/16 v7, 0x2f

    aput-byte v19, v3, v7

    const/16 v7, 0x30

    aput-byte v4, v3, v7

    const/16 v7, 0x31

    aput-byte v6, v3, v7

    const/16 v7, 0x32

    aput-byte v8, v3, v7

    aput-byte v15, v3, v14

    aput-byte v20, v3, v11

    const/16 v22, 0x35

    aput-byte v21, v3, v22

    const/16 v22, 0x36

    aput-byte v4, v3, v22

    const/16 v22, 0x37

    aput-byte v6, v3, v22

    const/16 v22, 0x38

    aput-byte v8, v3, v22

    const/16 v22, 0x39

    aput-byte v17, v3, v22

    const/16 v22, 0x3a

    aput-byte v9, v3, v22

    const/16 v22, 0x3b

    aput-byte v19, v3, v22

    const/16 v22, 0x3c

    aput-byte v4, v3, v22

    const/16 v22, 0x3d

    aput-byte v6, v3, v22

    const/16 v22, 0x3e

    aput-byte v8, v3, v22

    const/16 v22, 0x3f

    const/16 v23, 0x61

    aput-byte v23, v3, v22

    const/16 v22, 0x40

    aput-byte v16, v3, v22

    const/16 v22, 0x41

    const/16 v24, 0x66

    aput-byte v24, v3, v22

    const/16 v22, 0x42

    aput-byte v4, v3, v22

    const/16 v22, 0x43

    aput-byte v6, v3, v22

    const/16 v22, 0x44

    aput-byte v8, v3, v22

    const/16 v22, 0x45

    aput-byte v23, v3, v22

    const/16 v22, 0x46

    aput-byte v19, v3, v22

    const/16 v22, 0x47

    const/16 v24, 0x69

    aput-byte v24, v3, v22

    const/16 v22, 0x48

    aput-byte v4, v3, v22

    const/16 v22, 0x49

    aput-byte v12, v3, v22

    const/16 v22, 0x4a

    aput-byte v8, v3, v22

    const/16 v22, 0x4b

    aput-byte v21, v3, v22

    const/16 v22, 0x4c

    aput-byte v24, v3, v22

    const/16 v22, 0x4d

    aput-byte v19, v3, v22

    const/16 v22, 0x4e

    const/16 v25, 0x78

    aput-byte v25, v3, v22

    const/16 v22, 0x4f

    aput-byte v4, v3, v22

    const/16 v22, 0x50

    aput-byte v6, v3, v22

    const/16 v22, 0x51

    aput-byte v8, v3, v22

    const/16 v22, 0x52

    aput-byte v9, v3, v22

    const/16 v22, 0x53

    aput-byte v20, v3, v22

    const/16 v22, 0x54

    aput-byte v19, v3, v22

    const/16 v22, 0x55

    aput-byte v4, v3, v22

    const/16 v22, 0x56

    aput-byte v6, v3, v22

    const/16 v22, 0x57

    aput-byte v8, v3, v22

    const/16 v22, 0x58

    aput-byte v9, v3, v22

    const/16 v22, 0x59

    aput-byte v11, v3, v22

    const/16 v11, 0x5a

    aput-byte v19, v3, v11

    const/16 v11, 0x5b

    aput-byte v4, v3, v11

    const/16 v11, 0x5c

    aput-byte v12, v3, v11

    const/16 v11, 0x5d

    aput-byte v8, v3, v11

    const/16 v11, 0x5e

    aput-byte v14, v3, v11

    const/16 v11, 0x5f

    aput-byte v13, v3, v11

    const/16 v11, 0x60

    aput-byte v10, v3, v11

    aput-byte v10, v3, v23

    const/16 v11, 0x62

    aput-byte v4, v3, v11

    const/16 v11, 0x63

    aput-byte v6, v3, v11

    aput-byte v8, v3, v21

    aput-byte v14, v3, v18

    const/16 v11, 0x66

    aput-byte v13, v3, v11

    aput-byte v7, v3, v13

    const/16 v11, 0x68

    aput-byte v4, v3, v11

    aput-byte v6, v3, v24

    const/16 v11, 0x6a

    aput-byte v8, v3, v11

    const/16 v11, 0x6b

    aput-byte v9, v3, v11

    const/16 v11, 0x6c

    aput-byte v7, v3, v11

    aput-byte v15, v3, v9

    const/16 v11, 0x6e

    aput-byte v4, v3, v11

    aput-byte v12, v3, v20

    aput-byte v8, v3, v10

    const/16 v10, 0x71

    aput-byte v9, v3, v10

    const/16 v10, 0x72

    aput-byte v7, v3, v10

    aput-byte v15, v3, v16

    aput-byte v16, v3, v15

    const/16 v7, 0x75

    aput-byte v4, v3, v7

    aput-byte v6, v3, v19

    aput-byte v8, v3, v17

    const/16 v4, 0x78

    aput-byte v9, v3, v4

    const/16 v4, 0x79

    aput-byte v15, v3, v4

    const/16 v4, 0x7a

    aput-byte v16, v3, v4

    .line 4
    sget-object v4, Ldpf;->b:Ldpf;

    .line 5
    invoke-static {v4, v3}, Ldkd;->a(Ldkd;[B)Ldkd;

    move-result-object v3

    check-cast v3, Ldpf;

    sget-object v4, Ldtt;->a:Lccs;

    .line 6
    invoke-virtual {v0, v1, v3, v4}, Lcct;->a(Ljava/lang/String;Ljava/lang/Object;Lccs;)Lccv;
    :try_end_0
    .catch Ldkn; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    nop

    .line 8
    const-string v1, "Eu8__backup_copy_telephony_tar_to_pixelmigrate_temp_dir"

    invoke-virtual {v0, v1, v5}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 9
    const-string v1, "Eu8__backup_enable_cloud_restore_after_add_account"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Ldtu;->b:Lccv;

    .line 10
    const-string v1, "Eu8__backup_enable_ios_calendar_location_url_and_reminder"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 11
    const-string v1, "Eu8__backup_enable_mms_attachments_data_flavor"

    invoke-virtual {v0, v1, v5}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 12
    const-string v1, "Eu8__backup_enable_preserved_file_cleaner_service"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 13
    const-string v1, "Eu8__backup_handle_ios_locked_screen_before_starting_afc"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 14
    const-string v1, "Eu8__backup_hide_device_space_in_choose_what_to_copy"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    const-wide/16 v3, 0x1f4

    .line 15
    const-string v1, "Eu8__backup_ios_alarm_restore_duration_ms_per_item"

    invoke-virtual {v0, v1, v3, v4}, Lcct;->b(Ljava/lang/String;J)Lccv;

    .line 16
    const-string v1, "Eu8__backup_ios_enable_service_ssl_for_ios13"

    invoke-virtual {v0, v1, v5}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 17
    const-string v1, "Eu8__backup_ios_fix_secure_client"

    invoke-virtual {v0, v1, v5}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    const-wide/16 v3, 0x2

    .line 18
    const-string v1, "Eu8__backup_ios_insert_notes_to_keep_max_retries"

    invoke-virtual {v0, v1, v3, v4}, Lcct;->b(Ljava/lang/String;J)Lccv;

    const-wide/16 v3, 0x3e8

    .line 19
    const-string v1, "Eu8__backup_ios_insert_notes_to_keep_retry_interval_ms"

    invoke-virtual {v0, v1, v3, v4}, Lcct;->b(Ljava/lang/String;J)Lccv;

    const-wide/32 v3, 0xea60

    .line 20
    const-string v1, "Eu8__backup_ios_insert_notes_to_keep_timeout_ms"

    invoke-virtual {v0, v1, v3, v4}, Lcct;->b(Ljava/lang/String;J)Lccv;

    .line 21
    const-string v1, "Eu8__backup_ios_separate_video_and_picture_flavors"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 22
    const-string v1, "Eu8__backup_ios_transfer_alarms"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 23
    const-string v1, "Eu8__backup_ios_transfer_notes"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 24
    const-string v1, "Eu8__backup_ios_transfer_notes_for_account"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 25
    const-string v1, "Eu8__backup_ios_transfer_photos_to_target_folder"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 26
    const-string v1, "Eu8__backup_ios_using_contacts_structured_name"

    invoke-virtual {v0, v1, v5}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 27
    const-string v1, "Eu8__backup_ios_video_file_extensions_csv"

    const-string v3, ".mov,.m4v,.mp4,.avi,.3gp,.3gpp"

    invoke-virtual {v0, v1, v3}, Lcct;->b(Ljava/lang/String;Ljava/lang/String;)Lccv;

    .line 28
    const-string v1, "Eu8__backup_log_contact_info_for_ios"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 29
    const-string v1, "Eu8__backup_log_number_of_ios_picture_albums"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    const-wide/16 v3, 0x2

    .line 30
    const-string v1, "Eu8__backup_mms_attachments_size_multiplier"

    invoke-virtual {v0, v1, v3, v4}, Lcct;->b(Ljava/lang/String;J)Lccv;

    const-wide/16 v3, 0x48

    .line 31
    const-string v1, "Eu8__backup_preserved_file_cleaner_service_delay_in_hours"

    invoke-virtual {v0, v1, v3, v4}, Lcct;->b(Ljava/lang/String;J)Lccv;

    .line 32
    const-string v1, "Eu8__backup_reformat_idevice_udid_ending_with_excess_bytes"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 33
    const-string v1, "Eu8__backup_set_secondary_key_version_on_recovered_device_selected_in_cloud"

    invoke-virtual {v0, v1, v5}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Ldtu;->c:Lccv;

    .line 34
    const-string v1, "Eu8__backup_show_permissions_may_be_required_message"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 35
    const-string v1, "Eu8__backup_show_smart_device_ui_finished_fragment"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 36
    const-string v1, "Eu8__backup_transfer_ios_facetime_calls_with_phone_number"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    return-void

    .line 6
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    .line 7
    const-string v1, "Could not parse proto flag \"Eu8__backup_android_video_file_extensions\""

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object v0, Ldtu;->a:Lccv;

    .line 37
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    sget-object v0, Ldtu;->b:Lccv;

    .line 38
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    sget-object v0, Ldtu;->c:Lccv;

    .line 39
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
