.class public final Lbdi;
.super Lbiy;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Lbdp;

.field public b:[B

.field public final c:[I

.field public final d:[Ljava/lang/String;

.field public final e:[I

.field public final f:[[B

.field public final g:[Lblx;

.field public final h:Z

.field public i:Ldrt;

.field public final j:Lbdg;

.field public final k:Lbdg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbdj;

    invoke-direct {v0}, Lbdj;-><init>()V

    sput-object v0, Lbdi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lbdp;Ldrt;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lbiy;-><init>()V

    iput-object p1, p0, Lbdi;->a:Lbdp;

    iput-object p2, p0, Lbdi;->i:Ldrt;

    const/4 p1, 0x0

    iput-object p1, p0, Lbdi;->j:Lbdg;

    iput-object p1, p0, Lbdi;->k:Lbdg;

    iput-object p1, p0, Lbdi;->c:[I

    iput-object p3, p0, Lbdi;->d:[Ljava/lang/String;

    iput-object p1, p0, Lbdi;->e:[I

    iput-object p1, p0, Lbdi;->f:[[B

    iput-object p1, p0, Lbdi;->g:[Lblx;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lbdi;->h:Z

    return-void
.end method

.method public constructor <init>(Lbdp;[B[I[Ljava/lang/String;[I[[BZ[Lblx;)V
    .locals 0

    invoke-direct {p0}, Lbiy;-><init>()V

    iput-object p1, p0, Lbdi;->a:Lbdp;

    iput-object p2, p0, Lbdi;->b:[B

    iput-object p3, p0, Lbdi;->c:[I

    iput-object p4, p0, Lbdi;->d:[Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lbdi;->i:Ldrt;

    iput-object p1, p0, Lbdi;->j:Lbdg;

    iput-object p1, p0, Lbdi;->k:Lbdg;

    iput-object p5, p0, Lbdi;->e:[I

    iput-object p6, p0, Lbdi;->f:[[B

    iput-object p8, p0, Lbdi;->g:[Lblx;

    iput-boolean p7, p0, Lbdi;->h:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lbdi;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lbdi;

    iget-object v1, p0, Lbdi;->a:Lbdp;

    .line 3
    iget-object v3, p1, Lbdi;->a:Lbdp;

    invoke-static {v1, v3}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbdi;->b:[B

    iget-object v3, p1, Lbdi;->b:[B

    .line 4
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbdi;->c:[I

    iget-object v3, p1, Lbdi;->c:[I

    .line 5
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbdi;->d:[Ljava/lang/String;

    iget-object v3, p1, Lbdi;->d:[Ljava/lang/String;

    .line 6
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbdi;->i:Ldrt;

    iget-object v3, p1, Lbdi;->i:Ldrt;

    .line 7
    invoke-static {v1, v3}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lbdi;->j:Lbdg;

    .line 8
    const/4 v1, 0x0

    invoke-static {v1, v1}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lbdi;->k:Lbdg;

    .line 9
    invoke-static {v1, v1}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbdi;->e:[I

    iget-object v3, p1, Lbdi;->e:[I

    .line 10
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbdi;->f:[[B

    iget-object v3, p1, Lbdi;->f:[[B

    .line 11
    invoke-static {v1, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbdi;->g:[Lblx;

    iget-object v3, p1, Lbdi;->g:[Lblx;

    .line 12
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lbdi;->h:Z

    iget-boolean p1, p1, Lbdi;->h:Z

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lbdi;->a:Lbdp;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lbdi;->b:[B

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lbdi;->c:[I

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lbdi;->d:[Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lbdi;->i:Ldrt;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    iget-object v1, p0, Lbdi;->e:[I

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lbdi;->f:[[B

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lbdi;->g:[Lblx;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lbdi;->h:Z

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
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    const-string v1, "LogEventParcelable["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbdi;->a:Lbdp;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, ", LogEventBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbdi;->b:[B

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    .line 38
    :cond_0
    new-instance v3, Ljava/lang/String;

    .line 18
    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, ", TestCodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbdi;->c:[I

    .line 20
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", MendelPackages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbdi;->d:[Ljava/lang/String;

    .line 22
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", LogEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbdi;->i:Ldrt;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, ", ExtensionProducer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, ", VeProducer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, ", ExperimentIDs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbdi;->e:[I

    .line 30
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", ExperimentTokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbdi;->f:[[B

    .line 32
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ", ExperimentTokensParcelables: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbdi;->g:[Lblx;

    .line 34
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, ", AddPhenotypeExperimentTokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lbdi;->h:Z

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 39
    invoke-static {p1}, Lbjf;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lbdi;->a:Lbdp;

    .line 40
    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2}, Lbjf;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Lbdi;->b:[B

    .line 41
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lbjf;->a(Landroid/os/Parcel;I[BZ)V

    iget-object v1, p0, Lbdi;->c:[I

    .line 42
    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Lbjf;->a(Landroid/os/Parcel;I[I)V

    iget-object v1, p0, Lbdi;->d:[Ljava/lang/String;

    .line 43
    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Lbjf;->a(Landroid/os/Parcel;I[Ljava/lang/String;)V

    iget-object v1, p0, Lbdi;->e:[I

    .line 44
    const/4 v2, 0x6

    invoke-static {p1, v2, v1}, Lbjf;->a(Landroid/os/Parcel;I[I)V

    iget-object v1, p0, Lbdi;->f:[[B

    .line 45
    const/4 v2, 0x7

    invoke-static {p1, v2, v1}, Lbjf;->a(Landroid/os/Parcel;I[[B)V

    iget-boolean v1, p0, Lbdi;->h:Z

    .line 46
    const/16 v2, 0x8

    invoke-static {p1, v2, v1}, Lbjf;->a(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lbdi;->g:[Lblx;

    .line 47
    const/16 v2, 0x9

    invoke-static {p1, v2, v1, p2}, Lbjf;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 48
    invoke-static {p1, v0}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method
