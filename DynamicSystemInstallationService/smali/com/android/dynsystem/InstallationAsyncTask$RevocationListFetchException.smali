.class Lcom/android/dynsystem/InstallationAsyncTask$RevocationListFetchException;
.super Lcom/android/dynsystem/InstallationAsyncTask$ImageValidationException;
.source "InstallationAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dynsystem/InstallationAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RevocationListFetchException"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/dynsystem/InstallationAsyncTask$ImageValidationException;-><init>(Ljava/lang/Throwable;)V

    .line 81
    return-void
.end method
