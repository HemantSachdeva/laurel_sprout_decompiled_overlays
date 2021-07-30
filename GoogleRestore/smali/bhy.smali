.class public final Lbhy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lbhx;Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lbjf;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lbhx;->a:I

    .line 2
    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lbjf;->b(Landroid/os/Parcel;II)V

    iget v1, p0, Lbhx;->b:I

    .line 3
    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lbjf;->b(Landroid/os/Parcel;II)V

    iget v1, p0, Lbhx;->c:I

    .line 4
    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lbjf;->b(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lbhx;->d:Ljava/lang/String;

    .line 5
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lbjf;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lbhx;->e:Landroid/os/IBinder;

    .line 6
    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Lbjf;->a(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    iget-object v1, p0, Lbhx;->f:[Lcom/google/android/gms/common/api/Scope;

    .line 7
    const/4 v2, 0x6

    invoke-static {p1, v2, v1, p2}, Lbjf;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget-object v1, p0, Lbhx;->g:Landroid/os/Bundle;

    .line 8
    const/4 v2, 0x7

    invoke-static {p1, v2, v1}, Lbjf;->a(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    iget-object v1, p0, Lbhx;->h:Landroid/accounts/Account;

    .line 9
    const/16 v2, 0x8

    invoke-static {p1, v2, v1, p2}, Lbjf;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Lbhx;->i:[Lbdv;

    .line 10
    const/16 v2, 0xa

    invoke-static {p1, v2, v1, p2}, Lbjf;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget-object v1, p0, Lbhx;->j:[Lbdv;

    .line 11
    const/16 v2, 0xb

    invoke-static {p1, v2, v1, p2}, Lbjf;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lbhx;->k:Z

    .line 12
    const/16 v1, 0xc

    invoke-static {p1, v1, p2}, Lbjf;->a(Landroid/os/Parcel;IZ)V

    iget p0, p0, Lbhx;->l:I

    .line 13
    const/16 p2, 0xd

    invoke-static {p1, p2, p0}, Lbjf;->b(Landroid/os/Parcel;II)V

    .line 14
    invoke-static {p1, v0}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Lbja;->a(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v8, v3

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Lbja;->a(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    invoke-static {v0, v2}, Lbja;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v2}, Lbja;->d(Landroid/os/Parcel;I)I

    move-result v2

    move/from16 v16, v2

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v2}, Lbja;->c(Landroid/os/Parcel;I)Z

    move-result v2

    move v15, v2

    goto :goto_0

    :pswitch_3
    sget-object v3, Lbdv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lbja;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lbdv;

    move-object v14, v2

    goto :goto_0

    :pswitch_4
    sget-object v3, Lbdv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lbja;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lbdv;

    move-object v13, v2

    goto :goto_0

    :pswitch_5
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lbja;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    move-object v12, v2

    goto :goto_0

    :pswitch_6
    invoke-static {v0, v2}, Lbja;->j(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v2

    move-object v11, v2

    goto :goto_0

    :pswitch_7
    sget-object v3, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lbja;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/common/api/Scope;

    move-object v10, v2

    goto :goto_0

    :pswitch_8
    invoke-static {v0, v2}, Lbja;->i(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v2

    move-object v9, v2

    goto :goto_0

    :pswitch_9
    invoke-static {v0, v2}, Lbja;->h(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_0

    :pswitch_a
    invoke-static {v0, v2}, Lbja;->d(Landroid/os/Parcel;I)I

    move-result v2

    move v7, v2

    goto :goto_0

    :pswitch_b
    invoke-static {v0, v2}, Lbja;->d(Landroid/os/Parcel;I)I

    move-result v2

    move v6, v2

    goto :goto_0

    :pswitch_c
    invoke-static {v0, v2}, Lbja;->d(Landroid/os/Parcel;I)I

    move-result v2

    move v5, v2

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lbja;->p(Landroid/os/Parcel;I)V

    new-instance v0, Lbhx;

    move-object v4, v0

    invoke-direct/range {v4 .. v16}, Lbhx;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lbdv;[Lbdv;ZI)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lbhx;

    return-object p1
.end method
