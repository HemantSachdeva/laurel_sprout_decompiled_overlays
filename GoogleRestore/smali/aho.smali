.class public final Laho;
.super Landroid/app/Service;
.source "PG"


# static fields
.field public static final synthetic a:I

.field private static final b:Lacw;


# instance fields
.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Lada;

.field private final e:Lj$/util/function/Supplier;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "RestoreService"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Laho;->b:Lacw;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Laho;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-static {}, Lada;->a()Lada;

    move-result-object v0

    iput-object v0, p0, Laho;->d:Lada;

    .line 5
    new-instance v0, Lahl;

    invoke-direct {v0, p0}, Lahl;-><init>(Laho;)V

    iput-object v0, p0, Laho;->e:Lj$/util/function/Supplier;

    return-void
.end method

.method public static a(Landroid/content/Context;JLjava/util/ArrayList;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Laho;

    .line 6
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    const-string p0, "restoreToken"

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p0

    .line 8
    const-string p1, "packagesToRestore"

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    new-instance p1, Landroid/os/Binder;

    .line 9
    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    return-object p1
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 10

    sget-object p2, Laho;->b:Lacw;

    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x18

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "RestoreService started: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    .line 29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 10
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p3, v2}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Laho;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    const/4 p3, 0x1

    invoke-virtual {p2, v0, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-eqz p2, :cond_2

    const-wide/16 v2, 0x0

    .line 12
    const-string p2, "restoreToken"

    invoke-virtual {p1, p2, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 13
    const-string p2, "packagesToRestore"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    sget-object p2, Lahm;->a:Lj$/util/function/Function;

    .line 14
    invoke-virtual {p1, p2}, Lj$/util/Optional;->map(Lj$/util/function/Function;)Lj$/util/Optional;

    move-result-object p1

    .line 15
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, [Ljava/lang/String;

    iget-object p1, p0, Laho;->e:Lj$/util/function/Supplier;

    .line 16
    invoke-interface {p1}, Lj$/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lahr;

    iget-object v2, p0, Laho;->d:Lada;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lahn;

    invoke-direct {v3, v2}, Lahn;-><init>(Lada;)V

    :try_start_0
    iget-object p1, p1, Lahr;->b:Landroid/app/backup/BackupManager;

    .line 18
    invoke-virtual {p1}, Landroid/app/backup/BackupManager;->beginRestoreSession()Landroid/app/backup/RestoreSession;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p2, :cond_0

    :try_start_1
    sget-object p1, Lahr;->a:Lacw;

    const-string p3, "No restore session."

    new-array v2, v0, [Ljava/lang/Object;

    .line 25
    invoke-virtual {p1, p3, v2}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    invoke-interface {v3, v1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Lahq;

    .line 20
    move-object v4, p1

    move-object v5, p2

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lahq;-><init>(Landroid/app/backup/RestoreSession;J[Ljava/lang/String;Lj$/util/function/Consumer;)V

    .line 21
    invoke-virtual {p2, p1}, Landroid/app/backup/RestoreSession;->getAvailableRestoreSets(Landroid/app/backup/RestoreObserver;)I

    move-result p1

    if-eqz p1, :cond_2

    sget-object v2, Lahr;->a:Lacw;

    new-array p3, p3, [Ljava/lang/Object;

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    const-string p1, "Error fetching available restore sets: %d."

    invoke-virtual {v2, p1, p3}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p2}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    .line 24
    invoke-interface {v3, v1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 29
    :catch_0
    move-exception p1

    goto :goto_0

    .line 24
    :catch_1
    move-exception p1

    :goto_0
    sget-object p3, Lahr;->a:Lacw;

    new-array v0, v0, [Ljava/lang/Object;

    .line 27
    const-string v2, "Error starting system restore."

    invoke-virtual {p3, v2, p1, v0}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 28
    invoke-virtual {p2}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    :cond_1
    nop

    .line 29
    invoke-interface {v3, v1}, Lj$/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 26
    :cond_2
    :goto_1
    const/4 p1, 0x2

    return p1
.end method
