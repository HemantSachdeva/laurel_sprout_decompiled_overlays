.class public Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;
.super Ljava/lang/Object;
.source "FiveGServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/FiveGServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FiveGServiceState"
.end annotation


# instance fields
.field private mIconGroup:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field private mNrIconType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 95
    iput v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrIconType:I

    .line 96
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;)Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)I
    .locals 0

    .line 90
    iget p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrIconType:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)I
    .locals 0

    .line 90
    iput p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrIconType:I

    return p1
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)V
    .locals 1

    .line 114
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 115
    iget p1, p1, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrIconType:I

    iput p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrIconType:I

    return-void
.end method

.method public equals(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)Z
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrIconType:I

    iget p1, p1, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrIconType:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 105
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-object p0
.end method

.method getNrIconType()I
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 110
    iget p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrIconType:I

    return p0
.end method

.method public isNrIconTypeValid()Z
    .locals 1

    .line 100
    iget p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrIconType:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNrIconType="

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mNrIconType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIconGroup="

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
