.class public final Ldtb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldsz;


# static fields
.field public static final a:Lccv;

.field public static final b:Lccv;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcct;

    .line 1
    const-string v1, "com.google.android.gms.auth_account"

    invoke-static {v1}, Lcck;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcct;-><init>(Landroid/net/Uri;)V

    iget-object v1, v0, Lcct;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcct;

    iget-object v2, v0, Lcct;->a:Landroid/net/Uri;

    iget-object v3, v0, Lcct;->b:Ljava/lang/String;

    iget-object v0, v0, Lcct;->c:Ljava/lang/String;

    .line 4
    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcct;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5
    const-string v0, "getTokenRefactor__account_data_service_sample_percentage"

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcct;->a(Ljava/lang/String;D)V

    .line 6
    const-string v0, "getTokenRefactor__account_data_service_tokenAPI_usable"

    invoke-virtual {v1, v0, v4}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    const-wide/16 v5, 0x0

    .line 7
    const-string v0, "getTokenRefactor__android_id_shift"

    invoke-virtual {v1, v0, v5, v6}, Lcct;->b(Ljava/lang/String;J)Lccv;

    .line 8
    const-string v0, "getTokenRefactor__authenticator_logic_improved"

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    :try_start_0
    const-string v0, "getTokenRefactor__blocked_packages"

    const/16 v6, 0x15

    new-array v6, v6, [B

    const/16 v7, 0xa

    aput-byte v7, v6, v5

    const/16 v8, 0x13

    aput-byte v8, v6, v4

    const/4 v9, 0x2

    const/16 v10, 0x63

    aput-byte v10, v6, v9

    const/4 v9, 0x3

    const/16 v10, 0x6f

    aput-byte v10, v6, v9

    const/4 v9, 0x4

    const/16 v11, 0x6d

    aput-byte v11, v6, v9

    const/4 v9, 0x5

    const/16 v11, 0x2e

    aput-byte v11, v6, v9

    const/4 v9, 0x6

    const/16 v12, 0x61

    aput-byte v12, v6, v9

    const/4 v9, 0x7

    const/16 v12, 0x6e

    aput-byte v12, v6, v9

    const/16 v9, 0x8

    const/16 v13, 0x64

    aput-byte v13, v6, v9

    const/16 v9, 0x9

    const/16 v14, 0x72

    aput-byte v14, v6, v9

    aput-byte v10, v6, v7

    const/16 v7, 0xb

    const/16 v9, 0x69

    aput-byte v9, v6, v7

    const/16 v7, 0xc

    aput-byte v13, v6, v7

    const/16 v7, 0xd

    aput-byte v11, v6, v7

    const/16 v7, 0xe

    const/16 v10, 0x76

    aput-byte v10, v6, v7

    const/16 v7, 0xf

    const/16 v10, 0x65

    aput-byte v10, v6, v7

    const/16 v7, 0x10

    aput-byte v12, v6, v7

    const/16 v7, 0x11

    aput-byte v13, v6, v7

    const/16 v7, 0x12

    aput-byte v9, v6, v7

    aput-byte v12, v6, v8

    const/16 v7, 0x14

    const/16 v8, 0x67

    aput-byte v8, v6, v7

    .line 9
    sget-object v7, Ldpf;->b:Ldpf;

    .line 10
    invoke-static {v7, v6}, Ldkd;->a(Ldkd;[B)Ldkd;

    move-result-object v6

    check-cast v6, Ldpf;

    sget-object v7, Ldta;->a:Lccs;

    .line 11
    invoke-virtual {v1, v0, v6, v7}, Lcct;->a(Ljava/lang/String;Ljava/lang/Object;Lccs;)Lccv;

    move-result-object v0

    sput-object v0, Ldtb;->a:Lccv;
    :try_end_0
    .catch Ldkn; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    nop

    .line 13
    const-string v0, "getTokenRefactor__chimera_get_token_evolved"

    invoke-virtual {v1, v0, v4}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 14
    const-string v0, "getTokenRefactor__clear_token_timeout_seconds"

    const-wide/16 v6, 0x14

    invoke-virtual {v1, v0, v6, v7}, Lcct;->b(Ljava/lang/String;J)Lccv;

    .line 15
    const-string v0, "getTokenRefactor__default_task_timeout_seconds"

    invoke-virtual {v1, v0, v6, v7}, Lcct;->b(Ljava/lang/String;J)Lccv;

    .line 16
    const-string v0, "getTokenRefactor__gaul_accounts_api_evolved"

    invoke-virtual {v1, v0, v5}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 17
    const-string v0, "getTokenRefactor__gaul_token_api_evolved"

    invoke-virtual {v1, v0, v5}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    move-result-object v0

    sput-object v0, Ldtb;->b:Lccv;

    const-wide/16 v5, 0x78

    .line 18
    const-string v0, "getTokenRefactor__get_token_timeout_seconds"

    invoke-virtual {v1, v0, v5, v6}, Lcct;->b(Ljava/lang/String;J)Lccv;

    .line 19
    const-string v0, "getTokenRefactor__gms_account_authenticator_evolved"

    invoke-virtual {v1, v0, v4}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    .line 20
    const-string v0, "getTokenRefactor__gms_account_authenticator_sample_percentage"

    invoke-virtual {v1, v0, v2, v3}, Lcct;->a(Ljava/lang/String;D)V

    return-void

    .line 11
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    .line 12
    const-string v1, "Could not parse proto flag \"getTokenRefactor__blocked_packages\""

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    const-string v1, "Cannot set GServices prefix and skip GServices"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ldpf;
    .locals 1

    sget-object v0, Ldtb;->a:Lccv;

    .line 21
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldpf;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    sget-object v0, Ldtb;->b:Lccv;

    .line 22
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
