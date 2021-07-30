.class Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;
.super Ljava/lang/Object;
.source "CarTrustAgentEnrollmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/trust/CarTrustAgentEnrollmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthInfo"
.end annotation


# instance fields
.field final mAuthString:Ljava/lang/String;

.field final mDevice:Landroid/bluetooth/BluetoothDevice;

.field final mErrorCode:I


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V
    .locals 0

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    iput-object p1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 731
    iput-object p2, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;->mAuthString:Ljava/lang/String;

    .line 732
    iput p3, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;->mErrorCode:I

    return-void
.end method
