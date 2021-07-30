.class public Lcom/google/android/gsf/GoogleLoginCredentialsResult;
.super Ljava/lang/Object;
.source "GoogleLoginCredentialsResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gsf/GoogleLoginCredentialsResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mCredentialsIntent:Landroid/content/Intent;

.field private mCredentialsString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 126
    new-instance v0, Lcom/google/android/gsf/GoogleLoginCredentialsResult$1;

    invoke-direct {v0}, Lcom/google/android/gsf/GoogleLoginCredentialsResult$1;-><init>()V

    sput-object v0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsString:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    .line 89
    iput-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mAccount:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/gsf/GoogleLoginCredentialsResult$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->describeContents()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mAccount:Ljava/lang/String;

    return-object p0
.end method

.method public getCredentialsIntent()Landroid/content/Intent;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getCredentialsString()Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsString:Ljava/lang/String;

    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mAccount:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsString:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    .line 146
    iput-object v1, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 148
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    .line 149
    invoke-virtual {v0, p1}, Landroid/content/Intent;->readFromParcel(Landroid/os/Parcel;)V

    .line 150
    iget-object p0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    const-class p1, Lcom/google/android/gsf/GoogleLoginCredentialsResult;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 116
    iget-object p2, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mAccount:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object p2, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object p2, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 119
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object p0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
