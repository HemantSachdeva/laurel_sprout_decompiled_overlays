.class Lcom/android/dynsystem/KeyRevocationList$RevocationStatus;
.super Ljava/lang/Object;
.source "KeyRevocationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dynsystem/KeyRevocationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RevocationStatus"
.end annotation


# instance fields
.field final mReason:Ljava/lang/String;

.field final mStatus:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/dynsystem/KeyRevocationList$RevocationStatus;->mStatus:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/android/dynsystem/KeyRevocationList$RevocationStatus;->mReason:Ljava/lang/String;

    .line 55
    return-void
.end method
