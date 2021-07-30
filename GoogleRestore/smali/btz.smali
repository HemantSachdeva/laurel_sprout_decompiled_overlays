.class public final Lbtz;
.super Lwn;
.source "PG"


# instance fields
.field final synthetic k:Lbua;


# direct methods
.method public constructor <init>(Lbua;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lbtz;->k:Lbua;

    .line 1
    invoke-direct {p0, p2}, Lwn;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lwn;->f()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final f()Landroid/database/Cursor;
    .locals 10

    iget-object v0, p0, Lbtz;->k:Lbua;

    .line 2
    sget-object v1, Lbua;->a:[Ljava/lang/String;

    .line 3
    iget-object v0, v0, Lbua;->aa:Landroid/widget/Spinner;

    .line 2
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "type=?"

    move-object v5, v0

    move-object v6, v1

    goto :goto_0

    .line 11
    :cond_0
    move-object v5, v1

    move-object v6, v5

    .line 4
    :goto_0
    iget-object v0, p0, Lbtz;->k:Lbua;

    .line 5
    iget-object v0, v0, Lbua;->b:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbtz;->k:Lbua;

    .line 7
    iget-object v1, v1, Lbua;->c:Lbtv;

    .line 8
    invoke-virtual {v1}, Lbtv;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "PRIMES_EVENTS"

    sget-object v4, Lbua;->a:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id DESC"

    .line 9
    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 10
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    new-instance v3, Lbty;

    .line 11
    invoke-direct {v3, p0, v2, v1}, Lbty;-><init>(Lbtz;Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
