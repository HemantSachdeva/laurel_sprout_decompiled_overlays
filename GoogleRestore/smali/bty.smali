.class final Lbty;
.super Landroid/database/CursorWrapper;
.source "PG"


# instance fields
.field final synthetic a:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic b:Lbtz;


# direct methods
.method public constructor <init>(Lbtz;Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    iput-object p1, p0, Lbty;->b:Lbtz;

    iput-object p3, p0, Lbty;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 1
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 2
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    iget-object v0, p0, Lbty;->b:Lbtz;

    .line 3
    iget-object v0, v0, Lbtz;->k:Lbua;

    sget-object v1, Lbua;->a:[Ljava/lang/String;

    .line 4
    iget-object v0, v0, Lbua;->b:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbty;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
