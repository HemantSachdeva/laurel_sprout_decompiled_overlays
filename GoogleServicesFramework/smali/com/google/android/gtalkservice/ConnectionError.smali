.class public final Lcom/google/android/gtalkservice/ConnectionError;
.super Ljava/lang/Object;
.source "ConnectionError.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gtalkservice/ConnectionError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mError:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 161
    new-instance v0, Lcom/google/android/gtalkservice/ConnectionError$1;

    invoke-direct {v0}, Lcom/google/android/gtalkservice/ConnectionError$1;-><init>()V

    sput-object v0, Lcom/google/android/gtalkservice/ConnectionError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/gtalkservice/ConnectionError;->mError:I

    return-void
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, "NO ERROR"

    return-object p0

    :pswitch_1
    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_2
    const-string p0, "SERVER REJECT - RATE LIMIT"

    return-object p0

    :pswitch_3
    const-string p0, "SERVER FAILED"

    return-object p0

    :pswitch_4
    const-string p0, "HEARTBEAT TIMEOUT"

    return-object p0

    :pswitch_5
    const-string p0, "AUTH EXPIRED"

    return-object p0

    :pswitch_6
    const-string p0, "AUTH FAILED"

    return-object p0

    :pswitch_7
    const-string p0, "UNKNOWN HOST"

    return-object p0

    :pswitch_8
    const-string p0, "CONNECTION FAILED"

    return-object p0

    :pswitch_9
    const-string p0, "NO NETWORK"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 100
    iget p0, p0, Lcom/google/android/gtalkservice/ConnectionError;->mError:I

    invoke-static {p0}, Lcom/google/android/gtalkservice/ConnectionError;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 154
    iget p0, p0, Lcom/google/android/gtalkservice/ConnectionError;->mError:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
