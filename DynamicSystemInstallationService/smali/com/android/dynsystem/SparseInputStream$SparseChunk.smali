.class Lcom/android/dynsystem/SparseInputStream$SparseChunk;
.super Ljava/lang/Object;
.source "SparseInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dynsystem/SparseInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SparseChunk"
.end annotation


# static fields
.field static final DONTCARE:S = -0x353ds

.field static final FILL:S = -0x353es

.field static final RAW:S = -0x353fs


# instance fields
.field public fill:[B

.field public mChunkSize:I

.field public mChunkType:S

.field public mTotalSize:I

.field final synthetic this$0:Lcom/android/dynsystem/SparseInputStream;


# direct methods
.method private constructor <init>(Lcom/android/dynsystem/SparseInputStream;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/dynsystem/SparseInputStream$SparseChunk;->this$0:Lcom/android/dynsystem/SparseInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dynsystem/SparseInputStream;Lcom/android/dynsystem/SparseInputStream$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/dynsystem/SparseInputStream;
    .param p2, "x1"    # Lcom/android/dynsystem/SparseInputStream$1;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/dynsystem/SparseInputStream$SparseChunk;-><init>(Lcom/android/dynsystem/SparseInputStream;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-short v1, p0, Lcom/android/dynsystem/SparseInputStream$SparseChunk;->mChunkType:S

    .line 51
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/dynsystem/SparseInputStream$SparseChunk;->mChunkSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/dynsystem/SparseInputStream$SparseChunk;->mTotalSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 50
    const-string v1, "type: %x, chunk_size: %d, total_size: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
