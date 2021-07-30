.class public final Lbmd;
.super Lbiy;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lbmb;

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbme;

    invoke-direct {v0}, Lbme;-><init>()V

    sput-object v0, Lbmd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lbmb;Z)V
    .locals 0

    invoke-direct {p0}, Lbiy;-><init>()V

    iput-object p1, p0, Lbmd;->a:Ljava/lang/String;

    iput-object p2, p0, Lbmd;->b:Ljava/lang/String;

    iput-object p3, p0, Lbmd;->c:Lbmb;

    iput-boolean p4, p0, Lbmd;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2

    .line 8
    const-string v0, "FlagOverride("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lbmd;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbmd;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbmd;->c:Lbmb;

    .line 13
    invoke-virtual {v1, p1}, Lbmb;->a(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lbmd;->d:Z

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lbmd;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lbmd;

    iget-object v1, p0, Lbmd;->a:Ljava/lang/String;

    .line 3
    iget-object v3, p1, Lbmd;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lbms;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbmd;->b:Ljava/lang/String;

    iget-object v3, p1, Lbmd;->b:Ljava/lang/String;

    .line 4
    invoke-static {v1, v3}, Lbms;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbmd;->c:Lbmb;

    iget-object v3, p1, Lbmd;->c:Lbmb;

    .line 5
    invoke-static {v1, v3}, Lbms;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lbmd;->d:Z

    iget-boolean p1, p1, Lbmd;->d:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-virtual {p0, v0}, Lbmd;->a(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 18
    invoke-static {p1}, Lbjf;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lbmd;->a:Ljava/lang/String;

    .line 19
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lbjf;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lbmd;->b:Ljava/lang/String;

    .line 20
    const/4 v2, 0x3

    invoke-static {p1, v2, v1, v3}, Lbjf;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lbmd;->c:Lbmb;

    .line 21
    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2}, Lbjf;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lbmd;->d:Z

    .line 22
    const/4 v1, 0x5

    invoke-static {p1, v1, p2}, Lbjf;->a(Landroid/os/Parcel;IZ)V

    .line 23
    invoke-static {p1, v0}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method
