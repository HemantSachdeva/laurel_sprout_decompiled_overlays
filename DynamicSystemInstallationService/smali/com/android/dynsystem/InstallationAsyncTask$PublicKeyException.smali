.class Lcom/android/dynsystem/InstallationAsyncTask$PublicKeyException;
.super Lcom/android/dynsystem/InstallationAsyncTask$ImageValidationException;
.source "InstallationAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dynsystem/InstallationAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PublicKeyException"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0, p1}, Lcom/android/dynsystem/InstallationAsyncTask$ImageValidationException;-><init>(Ljava/lang/String;)V

    .line 93
    return-void
.end method
