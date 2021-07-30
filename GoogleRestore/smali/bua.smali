.class public final Lbua;
.super Lba;
.source "PG"

# interfaces
.implements Lwf;
.implements Lxo;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field public Z:Lbuc;

.field public aa:Landroid/widget/Spinner;

.field public final b:Ljava/lang/Object;

.field public c:Lbtv;

.field public d:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "message"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "created_at"

    aput-object v2, v0, v1

    sput-object v0, Lbua;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lba;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbua;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 6
    const v0, 0x7f0d008f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    const v0, 0x7f110145

    invoke-virtual {p0, v0}, Lba;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {}, Lbtu;->values()[Lbtu;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    iget-object v3, v3, Lbtu;->m:Ljava/lang/String;

    .line 10
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f0a0153

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lbua;->aa:Landroid/widget/Spinner;

    .line 12
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    .line 13
    invoke-direct {v0, v1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const p2, 0x1090009

    .line 14
    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object p2, p0, Lbua;->aa:Landroid/widget/Spinner;

    .line 15
    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p2, p0, Lbua;->aa:Landroid/widget/Spinner;

    new-instance v0, Lbtx;

    .line 16
    invoke-direct {v0, p0}, Lbtx;-><init>(Lbua;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p2, 0x7f0a012b

    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    .line 18
    new-instance v0, Lbuc;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbuc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbua;->Z:Lbuc;

    .line 19
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->a(Lqc;)V

    new-instance v0, Lph;

    .line 20
    invoke-direct {v0}, Lph;-><init>()V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->a(Lqk;)V

    new-instance v0, Lbtt;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Lbtt;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->a(Lyj;)V

    const p2, 0x7f0a0191

    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p2, p0, Lbua;->d:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p0, p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->a:Lxo;

    .line 24
    invoke-static {p0}, Lwg;->a(Ll;)Lwg;

    move-result-object p2

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v1, p2, Lwg;->b:Lwk;

    iget-boolean v1, v1, Lwk;->e:Z

    if-nez v1, :cond_5

    .line 26
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 27
    iget-object v1, p2, Lwg;->b:Lwk;

    .line 28
    invoke-virtual {v1}, Lwk;->c()Lwh;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Lwg;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initLoader in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": args="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LoaderManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 30
    invoke-virtual {p2, v0, p0, v1}, Lwg;->a(Landroid/os/Bundle;Lwf;Lwq;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    invoke-static {v0}, Lwg;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Re-using existing loader "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_3
    iget-object p2, p2, Lwg;->a:Ll;

    .line 32
    invoke-virtual {v1, p2, p0}, Lwh;->a(Ll;Lwf;)V

    .line 30
    :goto_1
    return-object p1

    .line 26
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    const-string p2, "initLoader must be called on the main thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    const-string p2, "Called while creating a loader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final a()V
    .locals 4

    .line 47
    invoke-static {p0}, Lwg;->a(Ll;)Lwg;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v2, v0, Lwg;->b:Lwk;

    iget-boolean v2, v2, Lwk;->e:Z

    if-nez v2, :cond_3

    .line 49
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 50
    const/4 v2, 0x2

    invoke-static {v2}, Lwg;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restartLoader in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": args="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LoaderManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, v0, Lwg;->b:Lwk;

    .line 52
    invoke-virtual {v2}, Lwk;->c()Lwh;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 53
    invoke-virtual {v2, v3}, Lwh;->a(Z)Lwq;

    move-result-object v2

    goto :goto_0

    .line 54
    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, p0, v2}, Lwg;->a(Landroid/os/Bundle;Lwf;Lwq;)V

    return-void

    .line 49
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 50
    const-string v1, "restartLoader must be called on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 48
    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Lba;->a(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Lba;->H:Z

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iput-boolean v0, p0, Lba;->H:Z

    invoke-virtual {p0}, Lba;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lba;->D:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lba;->x:Lbn;

    .line 3
    invoke-virtual {p1}, Lbn;->d()V

    :cond_0
    new-instance p1, Lbtv;

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lbtv;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lbua;->c:Lbtv;

    return-void
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 5
    const/high16 v0, 0x7f0e0000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 5

    .line 33
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0a003e

    if-ne v0, v2, :cond_0

    iget-object p1, p0, Lbua;->d:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, Lbtw;

    .line 34
    invoke-direct {v0, p0}, Lbtw;-><init>(Lbua;)V

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->post(Ljava/lang/Runnable;)Z

    return v1

    .line 35
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0a0033

    if-ne v0, v2, :cond_3

    .line 36
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lbua;->b:Ljava/lang/Object;

    .line 37
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v2, p0, Lbua;->c:Lbtv;

    .line 38
    invoke-virtual {v2}, Lbtv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v3, "PRIMES_EVENTS"

    .line 39
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 40
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 41
    :cond_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 42
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    iget-object p1, p0, Lbua;->Z:Lbuc;

    .line 44
    invoke-virtual {p1, v4}, Lbuc;->a(Landroid/database/Cursor;)V

    return v1

    .line 41
    :catchall_0
    move-exception v1

    if-eqz v2, :cond_2

    .line 38
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-static {v1, v2}, Ldat;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1

    .line 43
    :catchall_2
    move-exception v1

    .line 41
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 46
    :catchall_3
    move-exception v0

    .line 42
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 43
    throw v0

    .line 45
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a0034

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lba;->r()Lbc;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lbc;->finish()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
