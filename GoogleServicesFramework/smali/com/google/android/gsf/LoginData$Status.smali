.class public final enum Lcom/google/android/gsf/LoginData$Status;
.super Ljava/lang/Enum;
.source "LoginData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/LoginData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gsf/LoginData$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gsf/LoginData$Status;

.field public static final enum ACCOUNT_DISABLED:Lcom/google/android/gsf/LoginData$Status;

.field public static final enum BAD_REQUEST:Lcom/google/android/gsf/LoginData$Status;

.field public static final enum BAD_USERNAME:Lcom/google/android/gsf/LoginData$Status;

.field public static final enum CANCELLED:Lcom/google/android/gsf/LoginData$Status;

.field public static final enum CAPTCHA:Lcom/google/android/gsf/LoginData$Status;

.field public static final enum DELETED_GMAIL:Lcom/google/android/gsf/LoginData$Status;

.field public static final enum DMAGENT:Lcom/google/android/gsf/LoginData$Status;

.field public static final enum LOGIN_FAIL:Lcom/google/android/gsf/LoginData$Status;

.field public static final enum MISSING_APPS:Lcom/google/android/gsf/LoginData$Status;

.field public static final enum NETWORK_ERROR:Lcom/google/android/gsf/LoginData$Status;

.field public static final enum NO_GMAIL:Lcom/google/android/gsf/LoginData$Status;

.field public static final enum OAUTH_MIGRATION_REQUIRED:Lcom/google/android/gsf/LoginData$Status;

.field public static final enum SERVER_ERROR:Lcom/google/android/gsf/LoginData$Status;

.field public static final enum SUCCESS:Lcom/google/android/gsf/LoginData$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 30
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->SUCCESS:Lcom/google/android/gsf/LoginData$Status;

    .line 31
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    const-string v1, "ACCOUNT_DISABLED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->ACCOUNT_DISABLED:Lcom/google/android/gsf/LoginData$Status;

    .line 32
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    const-string v1, "BAD_USERNAME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->BAD_USERNAME:Lcom/google/android/gsf/LoginData$Status;

    .line 33
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    const-string v1, "BAD_REQUEST"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->BAD_REQUEST:Lcom/google/android/gsf/LoginData$Status;

    .line 34
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    const-string v1, "LOGIN_FAIL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->LOGIN_FAIL:Lcom/google/android/gsf/LoginData$Status;

    .line 35
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    const-string v1, "SERVER_ERROR"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->SERVER_ERROR:Lcom/google/android/gsf/LoginData$Status;

    .line 36
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    const-string v1, "MISSING_APPS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->MISSING_APPS:Lcom/google/android/gsf/LoginData$Status;

    .line 37
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    const-string v1, "NO_GMAIL"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->NO_GMAIL:Lcom/google/android/gsf/LoginData$Status;

    .line 38
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    const-string v1, "NETWORK_ERROR"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->NETWORK_ERROR:Lcom/google/android/gsf/LoginData$Status;

    .line 39
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    const-string v1, "CAPTCHA"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->CAPTCHA:Lcom/google/android/gsf/LoginData$Status;

    .line 40
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    const-string v1, "CANCELLED"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->CANCELLED:Lcom/google/android/gsf/LoginData$Status;

    .line 41
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    const-string v1, "DELETED_GMAIL"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->DELETED_GMAIL:Lcom/google/android/gsf/LoginData$Status;

    .line 42
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    const-string v1, "OAUTH_MIGRATION_REQUIRED"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->OAUTH_MIGRATION_REQUIRED:Lcom/google/android/gsf/LoginData$Status;

    .line 43
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    const-string v1, "DMAGENT"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->DMAGENT:Lcom/google/android/gsf/LoginData$Status;

    const/16 v1, 0xe

    new-array v1, v1, [Lcom/google/android/gsf/LoginData$Status;

    .line 29
    sget-object v16, Lcom/google/android/gsf/LoginData$Status;->SUCCESS:Lcom/google/android/gsf/LoginData$Status;

    aput-object v16, v1, v2

    sget-object v2, Lcom/google/android/gsf/LoginData$Status;->ACCOUNT_DISABLED:Lcom/google/android/gsf/LoginData$Status;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gsf/LoginData$Status;->BAD_USERNAME:Lcom/google/android/gsf/LoginData$Status;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gsf/LoginData$Status;->BAD_REQUEST:Lcom/google/android/gsf/LoginData$Status;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gsf/LoginData$Status;->LOGIN_FAIL:Lcom/google/android/gsf/LoginData$Status;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/gsf/LoginData$Status;->SERVER_ERROR:Lcom/google/android/gsf/LoginData$Status;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/android/gsf/LoginData$Status;->MISSING_APPS:Lcom/google/android/gsf/LoginData$Status;

    aput-object v2, v1, v8

    sget-object v2, Lcom/google/android/gsf/LoginData$Status;->NO_GMAIL:Lcom/google/android/gsf/LoginData$Status;

    aput-object v2, v1, v9

    sget-object v2, Lcom/google/android/gsf/LoginData$Status;->NETWORK_ERROR:Lcom/google/android/gsf/LoginData$Status;

    aput-object v2, v1, v10

    sget-object v2, Lcom/google/android/gsf/LoginData$Status;->CAPTCHA:Lcom/google/android/gsf/LoginData$Status;

    aput-object v2, v1, v11

    sget-object v2, Lcom/google/android/gsf/LoginData$Status;->CANCELLED:Lcom/google/android/gsf/LoginData$Status;

    aput-object v2, v1, v12

    sget-object v2, Lcom/google/android/gsf/LoginData$Status;->DELETED_GMAIL:Lcom/google/android/gsf/LoginData$Status;

    aput-object v2, v1, v13

    sget-object v2, Lcom/google/android/gsf/LoginData$Status;->OAUTH_MIGRATION_REQUIRED:Lcom/google/android/gsf/LoginData$Status;

    aput-object v2, v1, v14

    aput-object v0, v1, v15

    sput-object v1, Lcom/google/android/gsf/LoginData$Status;->$VALUES:[Lcom/google/android/gsf/LoginData$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gsf/LoginData$Status;
    .locals 1

    .line 29
    const-class v0, Lcom/google/android/gsf/LoginData$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gsf/LoginData$Status;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gsf/LoginData$Status;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/android/gsf/LoginData$Status;->$VALUES:[Lcom/google/android/gsf/LoginData$Status;

    invoke-virtual {v0}, [Lcom/google/android/gsf/LoginData$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gsf/LoginData$Status;

    return-object v0
.end method
