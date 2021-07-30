.class public final Lblx;
.super Lbiy;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final j:[[B


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B

.field public final c:[[B

.field public final d:[[B

.field public final e:[[B

.field public final f:[[B

.field public final g:[I

.field public final h:[[B

.field public final i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x0

    new-array v7, v0, [[B

    sput-object v7, Lblx;->j:[[B

    new-instance v0, Lbly;

    invoke-direct {v0}, Lbly;-><init>()V

    sput-object v0, Lblx;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v1, Lblx;

    .line 1
    const-string v2, ""

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v1 .. v10}, Lblx;-><init>(Ljava/lang/String;[B[[B[[B[[B[[B[I[[B[I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[[B[[B[[B[[B[I[[B[I)V
    .locals 0

    invoke-direct {p0}, Lbiy;-><init>()V

    iput-object p1, p0, Lblx;->a:Ljava/lang/String;

    iput-object p2, p0, Lblx;->b:[B

    iput-object p3, p0, Lblx;->c:[[B

    iput-object p4, p0, Lblx;->d:[[B

    iput-object p5, p0, Lblx;->e:[[B

    iput-object p6, p0, Lblx;->f:[[B

    iput-object p7, p0, Lblx;->g:[I

    iput-object p8, p0, Lblx;->h:[[B

    iput-object p9, p0, Lblx;->i:[I

    return-void
.end method

.method private static a([I)Ljava/util/List;
    .locals 4

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    new-instance v1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4
    aget v3, p0, v2

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method

.method private static a([[B)Ljava/util/List;
    .locals 5

    if-nez p0, :cond_0

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 9
    aget-object v3, p0, v2

    const/4 v4, 0x3

    .line 10
    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V
    .locals 5

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    .line 66
    const-string p1, "null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    nop

    .line 67
    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    .line 68
    aget-object v3, p2, v2

    if-nez v1, :cond_1

    .line 69
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    nop

    .line 70
    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    .line 71
    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    nop

    .line 73
    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static b([I)Ljava/util/List;
    .locals 5

    if-nez p0, :cond_0

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    new-instance v1, Ljava/util/ArrayList;

    shr-int/lit8 v0, v0, 0x1

    .line 37
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    new-instance v2, Lbmh;

    .line 38
    aget v3, p0, v0

    add-int/lit8 v4, v0, 0x1

    aget v4, p0, v4

    invoke-direct {v2, v3, v4}, Lbmh;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 39
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 12
    instance-of v0, p1, Lblx;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 13
    check-cast p1, Lblx;

    iget-object v0, p0, Lblx;->a:Ljava/lang/String;

    .line 14
    iget-object v2, p1, Lblx;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lbms;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lblx;->b:[B

    iget-object v2, p1, Lblx;->b:[B

    .line 15
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lblx;->c:[[B

    .line 16
    invoke-static {v0}, Lblx;->a([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lblx;->c:[[B

    .line 17
    invoke-static {v2}, Lblx;->a([[B)Ljava/util/List;

    move-result-object v2

    .line 18
    invoke-static {v0, v2}, Lbms;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lblx;->d:[[B

    .line 19
    invoke-static {v0}, Lblx;->a([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lblx;->d:[[B

    .line 20
    invoke-static {v2}, Lblx;->a([[B)Ljava/util/List;

    move-result-object v2

    .line 21
    invoke-static {v0, v2}, Lbms;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lblx;->e:[[B

    .line 22
    invoke-static {v0}, Lblx;->a([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lblx;->e:[[B

    .line 23
    invoke-static {v2}, Lblx;->a([[B)Ljava/util/List;

    move-result-object v2

    .line 24
    invoke-static {v0, v2}, Lbms;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lblx;->f:[[B

    .line 25
    invoke-static {v0}, Lblx;->a([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lblx;->f:[[B

    .line 26
    invoke-static {v2}, Lblx;->a([[B)Ljava/util/List;

    move-result-object v2

    .line 27
    invoke-static {v0, v2}, Lbms;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lblx;->g:[I

    .line 28
    invoke-static {v0}, Lblx;->a([I)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lblx;->g:[I

    invoke-static {v2}, Lblx;->a([I)Ljava/util/List;

    move-result-object v2

    .line 29
    invoke-static {v0, v2}, Lbms;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lblx;->h:[[B

    .line 30
    invoke-static {v0}, Lblx;->a([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lblx;->h:[[B

    .line 31
    invoke-static {v2}, Lblx;->a([[B)Ljava/util/List;

    move-result-object v2

    .line 32
    invoke-static {v0, v2}, Lbms;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lblx;->i:[I

    .line 33
    invoke-static {v0}, Lblx;->b([I)Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Lblx;->i:[I

    .line 34
    invoke-static {p1}, Lblx;->b([I)Ljava/util/List;

    move-result-object p1

    .line 35
    invoke-static {v0, p1}, Lbms;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    const-string v1, "ExperimentTokens"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lblx;->a:Ljava/lang/String;

    const-string v2, "null"

    const-string v3, "\'"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lblx;->b:[B

    .line 43
    const-string v4, ", direct=="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 63
    :cond_1
    nop

    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    .line 46
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :goto_1
    nop

    .line 48
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lblx;->c:[[B

    .line 49
    const-string v3, "GAIA="

    invoke-static {v0, v3, v2}, Lblx;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lblx;->d:[[B

    .line 51
    const-string v3, "PSEUDO="

    invoke-static {v0, v3, v2}, Lblx;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lblx;->e:[[B

    .line 53
    const-string v3, "ALWAYS="

    invoke-static {v0, v3, v2}, Lblx;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lblx;->f:[[B

    .line 55
    const-string v3, "OTHER="

    invoke-static {v0, v3, v2}, Lblx;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    .line 56
    const-string v2, ", weak="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lblx;->g:[I

    .line 57
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lblx;->h:[[B

    .line 59
    const-string v2, "directs="

    invoke-static {v0, v2, v1}, Lblx;->a(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    .line 60
    const-string v1, ", genDims="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lblx;->i:[I

    .line 61
    invoke-static {v1}, Lblx;->b([I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 74
    invoke-static {p1}, Lbjf;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lblx;->a:Ljava/lang/String;

    .line 75
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lbjf;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lblx;->b:[B

    .line 76
    const/4 v1, 0x3

    invoke-static {p1, v1, v0, v2}, Lbjf;->a(Landroid/os/Parcel;I[BZ)V

    iget-object v0, p0, Lblx;->c:[[B

    .line 77
    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lbjf;->a(Landroid/os/Parcel;I[[B)V

    iget-object v0, p0, Lblx;->d:[[B

    .line 78
    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lbjf;->a(Landroid/os/Parcel;I[[B)V

    iget-object v0, p0, Lblx;->e:[[B

    .line 79
    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Lbjf;->a(Landroid/os/Parcel;I[[B)V

    iget-object v0, p0, Lblx;->f:[[B

    .line 80
    const/4 v1, 0x7

    invoke-static {p1, v1, v0}, Lbjf;->a(Landroid/os/Parcel;I[[B)V

    iget-object v0, p0, Lblx;->g:[I

    .line 81
    const/16 v1, 0x8

    invoke-static {p1, v1, v0}, Lbjf;->a(Landroid/os/Parcel;I[I)V

    iget-object v0, p0, Lblx;->h:[[B

    .line 82
    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Lbjf;->a(Landroid/os/Parcel;I[[B)V

    iget-object v0, p0, Lblx;->i:[I

    .line 83
    const/16 v1, 0xa

    invoke-static {p1, v1, v0}, Lbjf;->a(Landroid/os/Parcel;I[I)V

    .line 84
    invoke-static {p1, p2}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method
