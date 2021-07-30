.class public final Lbdp;
.super Lbiy;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:I

.field public final j:Ljava/lang/Integer;

.field public final k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbdq;

    invoke-direct {v0}, Lbdq;-><init>()V

    sput-object v0, Lbdp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/Integer;Z)V
    .locals 0

    invoke-direct {p0}, Lbiy;-><init>()V

    iput-object p1, p0, Lbdp;->a:Ljava/lang/String;

    iput p2, p0, Lbdp;->b:I

    iput p3, p0, Lbdp;->c:I

    iput-object p4, p0, Lbdp;->d:Ljava/lang/String;

    iput-object p5, p0, Lbdp;->e:Ljava/lang/String;

    iput-boolean p6, p0, Lbdp;->f:Z

    iput-object p7, p0, Lbdp;->g:Ljava/lang/String;

    iput-boolean p8, p0, Lbdp;->h:Z

    iput p9, p0, Lbdp;->i:I

    iput-object p10, p0, Lbdp;->j:Ljava/lang/Integer;

    iput-boolean p11, p0, Lbdp;->k:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ldsg;)V
    .locals 0

    invoke-direct {p0}, Lbiy;-><init>()V

    .line 1
    invoke-static {p1}, Lbir;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lbdp;->a:Ljava/lang/String;

    iput p2, p0, Lbdp;->b:I

    const/4 p1, -0x1

    iput p1, p0, Lbdp;->c:I

    iput-object p3, p0, Lbdp;->g:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lbdp;->d:Ljava/lang/String;

    iput-object p1, p0, Lbdp;->e:Ljava/lang/String;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lbdp;->f:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lbdp;->h:Z

    iget p3, p4, Ldsg;->f:I

    iput p3, p0, Lbdp;->i:I

    iput-object p1, p0, Lbdp;->j:Ljava/lang/Integer;

    iput-boolean p2, p0, Lbdp;->k:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 2
    :cond_0
    instance-of v1, p1, Lbdp;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    check-cast p1, Lbdp;

    iget-object v1, p0, Lbdp;->a:Ljava/lang/String;

    .line 4
    iget-object v3, p1, Lbdp;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lbdp;->b:I

    iget v3, p1, Lbdp;->b:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lbdp;->c:I

    iget v3, p1, Lbdp;->c:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lbdp;->g:Ljava/lang/String;

    iget-object v3, p1, Lbdp;->g:Ljava/lang/String;

    .line 5
    invoke-static {v1, v3}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbdp;->d:Ljava/lang/String;

    iget-object v3, p1, Lbdp;->d:Ljava/lang/String;

    .line 6
    invoke-static {v1, v3}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbdp;->e:Ljava/lang/String;

    iget-object v3, p1, Lbdp;->e:Ljava/lang/String;

    .line 7
    invoke-static {v1, v3}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lbdp;->f:Z

    iget-boolean v3, p1, Lbdp;->f:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lbdp;->h:Z

    iget-boolean v3, p1, Lbdp;->h:Z

    if-ne v1, v3, :cond_1

    iget v1, p0, Lbdp;->i:I

    iget v3, p1, Lbdp;->i:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lbdp;->j:Ljava/lang/Integer;

    iget-object v3, p1, Lbdp;->j:Ljava/lang/Integer;

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lbdp;->k:Z

    iget-boolean p1, p1, Lbdp;->k:Z

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lbdp;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lbdp;->b:I

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lbdp;->c:I

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lbdp;->g:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lbdp;->d:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lbdp;->e:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lbdp;->f:Z

    .line 10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lbdp;->h:Z

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lbdp;->i:I

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lbdp;->j:Ljava/lang/Integer;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lbdp;->k:Z

    .line 13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 14
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v1, "PlayLoggerContext[package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbdp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, ",packageVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbdp;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, ",logSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbdp;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, ",logSourceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbdp;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, ",uploadAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbdp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ",loggingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbdp;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ",logAndroidId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lbdp;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ",isAnonymous="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lbdp;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, ",qosTier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbdp;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, ",appMobilespecId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbdp;->j:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ",scrubMccMnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lbdp;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 29
    invoke-static {p1}, Lbjf;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lbdp;->a:Ljava/lang/String;

    .line 30
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lbjf;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v0, p0, Lbdp;->b:I

    .line 31
    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lbjf;->b(Landroid/os/Parcel;II)V

    iget v0, p0, Lbdp;->c:I

    .line 32
    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lbjf;->b(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lbdp;->d:Ljava/lang/String;

    .line 33
    const/4 v1, 0x5

    invoke-static {p1, v1, v0, v2}, Lbjf;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lbdp;->e:Ljava/lang/String;

    .line 34
    const/4 v1, 0x6

    invoke-static {p1, v1, v0, v2}, Lbjf;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v0, p0, Lbdp;->f:Z

    .line 35
    const/4 v1, 0x7

    invoke-static {p1, v1, v0}, Lbjf;->a(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lbdp;->g:Ljava/lang/String;

    .line 36
    const/16 v1, 0x8

    invoke-static {p1, v1, v0, v2}, Lbjf;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v0, p0, Lbdp;->h:Z

    .line 37
    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Lbjf;->a(Landroid/os/Parcel;IZ)V

    iget v0, p0, Lbdp;->i:I

    .line 38
    const/16 v1, 0xa

    invoke-static {p1, v1, v0}, Lbjf;->b(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lbdp;->j:Ljava/lang/Integer;

    .line 39
    const/16 v1, 0xb

    invoke-static {p1, v1, v0}, Lbjf;->a(Landroid/os/Parcel;ILjava/lang/Integer;)V

    iget-boolean v0, p0, Lbdp;->k:Z

    .line 40
    const/16 v1, 0xc

    invoke-static {p1, v1, v0}, Lbjf;->a(Landroid/os/Parcel;IZ)V

    .line 41
    invoke-static {p1, p2}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method
