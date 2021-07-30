.class final Lap;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:[I

.field final b:Ljava/util/ArrayList;

.field final c:[I

.field final d:[I

.field final e:I

.field final f:Ljava/lang/String;

.field final g:I

.field final h:I

.field final i:Ljava/lang/CharSequence;

.field final j:I

.field final k:Ljava/lang/CharSequence;

.field final l:Ljava/util/ArrayList;

.field final m:Ljava/util/ArrayList;

.field final n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lao;

    invoke-direct {v0}, Lao;-><init>()V

    sput-object v0, Lap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lan;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iget-object v0, p1, Lan;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x5

    .line 16
    new-array v1, v1, [I

    iput-object v1, p0, Lap;->a:[I

    .line 17
    iget-boolean v1, p1, Lan;->j:Z

    if-eqz v1, :cond_2

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lap;->b:Ljava/util/ArrayList;

    .line 20
    new-array v1, v0, [I

    iput-object v1, p0, Lap;->c:[I

    .line 21
    new-array v1, v0, [I

    iput-object v1, p0, Lap;->d:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 22
    iget-object v3, p1, Lan;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcg;

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lap;->a:[I

    .line 23
    iget v6, v3, Lcg;->a:I

    aput v6, v5, v2

    iget-object v2, p0, Lap;->b:Ljava/util/ArrayList;

    .line 24
    iget-object v5, v3, Lcg;->b:Lba;

    if-eqz v5, :cond_0

    iget-object v5, v5, Lba;->j:Ljava/lang/String;

    goto :goto_1

    .line 30
    :cond_0
    const/4 v5, 0x0

    .line 24
    :goto_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lap;->a:[I

    add-int/lit8 v5, v4, 0x1

    .line 25
    iget v6, v3, Lcg;->c:I

    aput v6, v2, v4

    add-int/lit8 v4, v5, 0x1

    .line 26
    iget v6, v3, Lcg;->d:I

    aput v6, v2, v5

    add-int/lit8 v5, v4, 0x1

    .line 27
    iget v6, v3, Lcg;->e:I

    aput v6, v2, v4

    add-int/lit8 v4, v5, 0x1

    .line 28
    iget v6, v3, Lcg;->f:I

    aput v6, v2, v5

    iget-object v2, p0, Lap;->c:[I

    .line 29
    iget-object v5, v3, Lcg;->g:Li;

    invoke-virtual {v5}, Li;->ordinal()I

    move-result v5

    aput v5, v2, v1

    iget-object v2, p0, Lap;->d:[I

    .line 30
    iget-object v3, v3, Lcg;->h:Li;

    invoke-virtual {v3}, Li;->ordinal()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    .line 31
    :cond_1
    iget v0, p1, Lan;->i:I

    iput v0, p0, Lap;->e:I

    .line 32
    iget-object v0, p1, Lan;->l:Ljava/lang/String;

    iput-object v0, p0, Lap;->f:Ljava/lang/String;

    .line 33
    iget v0, p1, Lan;->c:I

    iput v0, p0, Lap;->g:I

    .line 34
    iget v0, p1, Lan;->m:I

    iput v0, p0, Lap;->h:I

    .line 35
    iget-object v0, p1, Lan;->n:Ljava/lang/CharSequence;

    iput-object v0, p0, Lap;->i:Ljava/lang/CharSequence;

    .line 36
    iget v0, p1, Lan;->o:I

    iput v0, p0, Lap;->j:I

    .line 37
    iget-object v0, p1, Lan;->p:Ljava/lang/CharSequence;

    iput-object v0, p0, Lap;->k:Ljava/lang/CharSequence;

    .line 38
    iget-object v0, p1, Lan;->q:Ljava/util/ArrayList;

    iput-object v0, p0, Lap;->l:Ljava/util/ArrayList;

    .line 39
    iget-object v0, p1, Lan;->r:Ljava/util/ArrayList;

    iput-object v0, p0, Lap;->m:Ljava/util/ArrayList;

    .line 40
    iget-boolean p1, p1, Lan;->s:Z

    iput-boolean p1, p0, Lap;->n:Z

    return-void

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    const-string v0, "Not on back stack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lap;->a:[I

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lap;->b:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lap;->c:[I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lap;->d:[I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lap;->e:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lap;->f:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lap;->g:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lap;->h:I

    .line 9
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lap;->i:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lap;->j:I

    .line 11
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lap;->k:Ljava/lang/CharSequence;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lap;->l:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lap;->m:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lap;->n:Z

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Lap;->a:[I

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object p2, p0, Lap;->b:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lap;->c:[I

    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object p2, p0, Lap;->d:[I

    .line 44
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget p2, p0, Lap;->e:I

    .line 45
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lap;->f:Ljava/lang/String;

    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lap;->g:I

    .line 47
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lap;->h:I

    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lap;->i:Ljava/lang/CharSequence;

    .line 49
    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget p2, p0, Lap;->j:I

    .line 50
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lap;->k:Ljava/lang/CharSequence;

    .line 51
    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object p2, p0, Lap;->l:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lap;->m:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean p2, p0, Lap;->n:Z

    .line 54
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
