.class final Laby;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field a:J

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:J

.field final e:J

.field final f:J

.field final g:J

.field final h:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laby;->b:Ljava/lang/String;

    .line 1
    const-string p1, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Laby;->c:Ljava/lang/String;

    iput-wide p3, p0, Laby;->d:J

    iput-wide p5, p0, Laby;->e:J

    iput-wide p7, p0, Laby;->f:J

    iput-wide p9, p0, Laby;->g:J

    iput-object p11, p0, Laby;->h:Ljava/util/List;

    return-void
.end method

.method static a(Labz;)Laby;
    .locals 16

    .line 2
    invoke-static/range {p0 .. p0}, Laca;->a(Ljava/io/InputStream;)I

    move-result v0

    const v1, 0x20150306

    if-ne v0, v1, :cond_3

    .line 4
    invoke-static/range {p0 .. p0}, Laca;->a(Labz;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static/range {p0 .. p0}, Laca;->a(Labz;)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static/range {p0 .. p0}, Laca;->b(Ljava/io/InputStream;)J

    move-result-wide v5

    .line 7
    invoke-static/range {p0 .. p0}, Laca;->b(Ljava/io/InputStream;)J

    move-result-wide v7

    .line 8
    invoke-static/range {p0 .. p0}, Laca;->b(Ljava/io/InputStream;)J

    move-result-wide v9

    .line 9
    invoke-static/range {p0 .. p0}, Laca;->b(Ljava/io/InputStream;)J

    move-result-wide v11

    .line 10
    invoke-static/range {p0 .. p0}, Laca;->a(Ljava/io/InputStream;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 11
    if-nez v0, :cond_0

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    move-object v13, v1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 13
    invoke-static/range {p0 .. p0}, Laca;->a(Labz;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-static/range {p0 .. p0}, Laca;->a(Labz;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Labb;

    .line 15
    invoke-direct {v15, v2, v14}, Labb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Laby;

    .line 16
    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Laby;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-object v0

    .line 10
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f

    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "readHeaderList size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 3
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
