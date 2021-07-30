.class public final Lbmo;
.super Lacu;
.source "PG"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field private final a:Lbpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    const-string v0, "com.google.android.gms.phenotype.internal.IPhenotypeCallbacks"

    invoke-direct {p0, v0}, Lacu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lbpl;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.phenotype.internal.IPhenotypeCallbacks"

    invoke-direct {p0, v0}, Lacu;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lbmo;->a:Lbpl;

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 40
    const/4 p1, 0x0

    return p1

    .line 3
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p2

    .line 5
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p3, p0, Lbmo;->a:Lbpl;

    invoke-static {p1, p2, p3}, Lbuo;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lbpl;)V

    goto/16 :goto_0

    .line 6
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget-object p2, p0, Lbmo;->a:Lbpl;

    .line 7
    invoke-static {p1, p2}, Lbuo;->a(Lcom/google/android/gms/common/api/Status;Lbpl;)V

    goto/16 :goto_0

    .line 8
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget-object p2, p0, Lbmo;->a:Lbpl;

    .line 9
    invoke-static {p1, p2}, Lbuo;->a(Lcom/google/android/gms/common/api/Status;Lbpl;)V

    goto/16 :goto_0

    .line 10
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    sget-object p3, Lbmf;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    invoke-static {p2, p3}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lbmf;

    iget-object p3, p0, Lbmo;->a:Lbpl;

    .line 12
    invoke-static {p1, p2, p3}, Lbuo;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lbpl;)V

    goto/16 :goto_0

    .line 13
    :pswitch_4
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget-object p2, p0, Lbmo;->a:Lbpl;

    .line 14
    invoke-static {p1, p2}, Lbuo;->a(Lcom/google/android/gms/common/api/Status;Lbpl;)V

    goto/16 :goto_0

    .line 15
    :pswitch_5
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p2

    .line 17
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p3, p0, Lbmo;->a:Lbpl;

    invoke-static {p1, p2, p3}, Lbuo;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lbpl;)V

    goto/16 :goto_0

    .line 18
    :pswitch_6
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    sget-object p3, Lblt;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 19
    invoke-static {p2, p3}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lblt;

    iget-object p3, p0, Lbmo;->a:Lbpl;

    .line 20
    invoke-static {p1, p2, p3}, Lbuo;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lbpl;)V

    goto/16 :goto_0

    .line 21
    :pswitch_7
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 22
    sget-object p3, Lbmb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lbmb;

    iget-object p3, p0, Lbmo;->a:Lbpl;

    .line 23
    invoke-static {p1, p2, p3}, Lbuo;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lbpl;)V

    goto/16 :goto_0

    .line 24
    :pswitch_8
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget-object p2, p0, Lbmo;->a:Lbpl;

    .line 25
    invoke-static {p1, p2}, Lbuo;->a(Lcom/google/android/gms/common/api/Status;Lbpl;)V

    goto/16 :goto_0

    .line 26
    :pswitch_9
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    sget-object p3, Lblv;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    invoke-static {p2, p3}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lblv;

    iget-object p3, p0, Lbmo;->a:Lbpl;

    .line 28
    invoke-static {p1, p2, p3}, Lbuo;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lbpl;)V

    goto :goto_0

    .line 29
    :pswitch_a
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 30
    sget-object p3, Lblx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lblx;

    iget-object p3, p0, Lbmo;->a:Lbpl;

    .line 31
    invoke-static {p1, p2, p3}, Lbuo;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lbpl;)V

    goto :goto_0

    .line 32
    :pswitch_b
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget-object p2, p0, Lbmo;->a:Lbpl;

    .line 33
    invoke-static {p1, p2}, Lbuo;->a(Lcom/google/android/gms/common/api/Status;Lbpl;)V

    goto :goto_0

    .line 34
    :pswitch_c
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    sget-object p3, Lblt;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 35
    invoke-static {p2, p3}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lblt;

    iget-object p3, p0, Lbmo;->a:Lbpl;

    .line 36
    invoke-static {p1, p2, p3}, Lbuo;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lbpl;)V

    goto :goto_0

    .line 37
    :pswitch_d
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget-object p2, p0, Lbmo;->a:Lbpl;

    .line 38
    invoke-static {p1, p2}, Lbuo;->a(Lcom/google/android/gms/common/api/Status;Lbpl;)V

    goto :goto_0

    .line 39
    :pswitch_e
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget-object p2, p0, Lbmo;->a:Lbpl;

    .line 40
    invoke-static {p1, p2}, Lbuo;->a(Lcom/google/android/gms/common/api/Status;Lbpl;)V

    goto :goto_0

    .line 41
    :pswitch_f
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget-object p2, p0, Lbmo;->a:Lbpl;

    .line 42
    invoke-static {p1, p2}, Lbuo;->a(Lcom/google/android/gms/common/api/Status;Lbpl;)V

    .line 36
    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
