.class Lcom/android/dynsystem/InstallationAsyncTask$UnsupportedUrlException;
.super Ljava/lang/Exception;
.source "InstallationAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dynsystem/InstallationAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnsupportedUrlException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dynsystem/InstallationAsyncTask;


# direct methods
.method private constructor <init>(Lcom/android/dynsystem/InstallationAsyncTask;Ljava/lang/String;)V
    .locals 0
    .param p2, "message"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/android/dynsystem/InstallationAsyncTask$UnsupportedUrlException;->this$0:Lcom/android/dynsystem/InstallationAsyncTask;

    .line 58
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dynsystem/InstallationAsyncTask;Ljava/lang/String;Lcom/android/dynsystem/InstallationAsyncTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/dynsystem/InstallationAsyncTask;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/android/dynsystem/InstallationAsyncTask$1;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/dynsystem/InstallationAsyncTask$UnsupportedUrlException;-><init>(Lcom/android/dynsystem/InstallationAsyncTask;Ljava/lang/String;)V

    return-void
.end method
