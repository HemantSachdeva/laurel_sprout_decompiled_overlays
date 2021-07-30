.class Lcom/android/dynsystem/InstallationAsyncTask$Progress;
.super Ljava/lang/Object;
.source "InstallationAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dynsystem/InstallationAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Progress"
.end annotation


# instance fields
.field mInstalledSize:J

.field mNumInstalledPartitions:I

.field mPartitionName:Ljava/lang/String;

.field mPartitionSize:J

.field final synthetic this$0:Lcom/android/dynsystem/InstallationAsyncTask;


# direct methods
.method constructor <init>(Lcom/android/dynsystem/InstallationAsyncTask;Ljava/lang/String;JJI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dynsystem/InstallationAsyncTask;
    .param p2, "partitionName"    # Ljava/lang/String;
    .param p3, "partitionSize"    # J
    .param p5, "installedSize"    # J
    .param p7, "numInstalled"    # I

    .line 113
    iput-object p1, p0, Lcom/android/dynsystem/InstallationAsyncTask$Progress;->this$0:Lcom/android/dynsystem/InstallationAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p2, p0, Lcom/android/dynsystem/InstallationAsyncTask$Progress;->mPartitionName:Ljava/lang/String;

    .line 115
    iput-wide p3, p0, Lcom/android/dynsystem/InstallationAsyncTask$Progress;->mPartitionSize:J

    .line 116
    iput-wide p5, p0, Lcom/android/dynsystem/InstallationAsyncTask$Progress;->mInstalledSize:J

    .line 118
    iput p7, p0, Lcom/android/dynsystem/InstallationAsyncTask$Progress;->mNumInstalledPartitions:I

    .line 119
    return-void
.end method
