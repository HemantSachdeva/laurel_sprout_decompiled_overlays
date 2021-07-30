.class public Lba;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Ll;
.implements Lak;
.implements Lg;
.implements Lxa;


# static fields
.field static final e:Ljava/lang/Object;


# instance fields
.field A:I

.field B:I

.field C:Ljava/lang/String;

.field public D:Z

.field E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field final I:Z

.field public J:Z

.field public K:Landroid/view/ViewGroup;

.field public L:Landroid/view/View;

.field M:Z

.field N:Z

.field public O:Lay;

.field P:Z

.field Q:Z

.field R:F

.field S:Landroid/view/LayoutInflater;

.field T:Z

.field U:Li;

.field V:Lda;

.field final W:Lv;

.field X:Lwz;

.field Y:Lj;

.field f:I

.field g:Landroid/os/Bundle;

.field h:Landroid/util/SparseArray;

.field i:Ljava/lang/Boolean;

.field j:Ljava/lang/String;

.field public k:Landroid/os/Bundle;

.field l:Lba;

.field m:Ljava/lang/String;

.field n:I

.field public o:Ljava/lang/Boolean;

.field p:Z

.field public q:Z

.field r:Z

.field s:Z

.field t:Z

.field u:Z

.field v:I

.field public w:Lbx;

.field public x:Lbn;

.field y:Lbx;

.field z:Lba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lba;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lba;->f:I

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lba;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lba;->m:Ljava/lang/String;

    iput-object v0, p0, Lba;->o:Ljava/lang/Boolean;

    new-instance v0, Lbx;

    .line 2
    invoke-direct {v0}, Lbx;-><init>()V

    iput-object v0, p0, Lba;->y:Lbx;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lba;->I:Z

    iput-boolean v0, p0, Lba;->N:Z

    new-instance v0, Law;

    .line 3
    invoke-direct {v0, p0}, Law;-><init>(Lba;)V

    .line 4
    sget-object v0, Li;->e:Li;

    iput-object v0, p0, Lba;->U:Li;

    new-instance v0, Lv;

    .line 5
    invoke-direct {v0}, Lv;-><init>()V

    iput-object v0, p0, Lba;->W:Lv;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 7
    invoke-virtual {p0}, Lba;->n()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lba;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    const-string v0, ": make sure class name exists, is public, and has an empty constructor that is public"

    const-string v1, "Unable to instantiate fragment "

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 74
    invoke-static {p0, p1}, Lbm;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 75
    invoke-virtual {p0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lba;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    return-object p0

    .line 75
    :catch_0
    move-exception p0

    new-instance v0, Laz;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": calling Fragment constructor caused an exception"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Laz;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 78
    :catch_1
    move-exception p0

    new-instance v0, Laz;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": could not find Fragment constructor"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Laz;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 79
    :catch_2
    move-exception p0

    new-instance v2, Laz;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p0}, Laz;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 76
    :catch_3
    move-exception p0

    new-instance v2, Laz;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p0}, Laz;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method


# virtual methods
.method public A()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lba;->J:Z

    return-void
.end method

.method public final B()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lba;->O:Lay;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lay;->e:Ljava/lang/Object;

    sget-object v2, Lba;->e:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lba;->O:Lay;

    .line 60
    iget-object v0, v0, Lay;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final C()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lba;->O:Lay;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lay;->f:Ljava/lang/Object;

    sget-object v2, Lba;->e:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lba;->O:Lay;

    .line 58
    iget-object v0, v0, Lay;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final D()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lba;->O:Lay;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lay;->g:Ljava/lang/Object;

    sget-object v2, Lba;->e:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lba;->O:Lay;

    .line 61
    iget-object v0, v0, Lay;->g:Ljava/lang/Object;

    return-object v0
.end method

.method final E()V
    .locals 5

    iget-object v0, p0, Lba;->y:Lbx;

    .line 94
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbx;->c(I)V

    iget-object v0, p0, Lba;->L:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lba;->V:Lda;

    .line 95
    sget-object v2, Lh;->f:Lh;

    invoke-virtual {v0, v2}, Lda;->a(Lh;)V

    :cond_0
    iput v1, p0, Lba;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lba;->J:Z

    .line 96
    invoke-virtual {p0}, Lba;->j()V

    iget-boolean v1, p0, Lba;->J:Z

    if-eqz v1, :cond_2

    .line 98
    invoke-static {p0}, Lwg;->a(Ll;)Lwg;

    move-result-object v1

    iget-object v1, v1, Lwg;->b:Lwk;

    iget-object v2, v1, Lwk;->d:Ltp;

    .line 99
    invoke-virtual {v2}, Ltp;->c()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, v1, Lwk;->d:Ltp;

    .line 100
    invoke-virtual {v4, v3}, Ltp;->d(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lwh;

    .line 101
    invoke-virtual {v4}, Lwh;->e()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lba;->u:Z

    return-void

    .line 96
    :cond_2
    new-instance v0, Ldi;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ldi;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final F()Lay;
    .locals 1

    iget-object v0, p0, Lba;->O:Lay;

    if-nez v0, :cond_0

    new-instance v0, Lay;

    .line 52
    invoke-direct {v0}, Lay;-><init>()V

    iput-object v0, p0, Lba;->O:Lay;

    :cond_0
    iget-object v0, p0, Lba;->O:Lay;

    return-object v0
.end method

.method public final G()I
    .locals 1

    iget-object v0, p0, Lba;->O:Lay;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Lay;->c:I

    return v0
.end method

.method final H()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lba;->O:Lay;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lay;->a:Landroid/view/View;

    return-object v0
.end method

.method final I()Z
    .locals 1

    iget-object v0, p0, Lba;->O:Lay;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, v0, Lay;->i:Z

    return v0
.end method

.method public final J()Landroid/view/LayoutInflater;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lba;->x:Lbn;

    if-eqz v0, :cond_0

    .line 54
    check-cast v0, Lbb;

    iget-object v1, v0, Lbb;->a:Lbc;

    .line 55
    invoke-virtual {v1}, Lbc;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v0, v0, Lbb;->a:Lbc;

    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lba;->y:Lbx;

    iget-object v1, v1, Lbx;->c:Lbo;

    .line 56
    invoke-static {v0, v1}, Ley;->a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-object v0

    .line 0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 54
    const-string v1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final K()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lba;->J:Z

    iget-object v1, p0, Lba;->x:Lbn;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lbn;->b:Landroid/app/Activity;

    :goto_0
    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lba;->J:Z

    :cond_1
    return-void
.end method

.method final L()V
    .locals 1

    iget-object v0, p0, Lba;->O:Lay;

    return-void
.end method

.method final M()V
    .locals 1

    iget-object v0, p0, Lba;->O:Lay;

    return-void
.end method

.method final N()Landroid/view/LayoutInflater;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lba;->l()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lba;->S:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public final R()Lae;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(I)Ljava/lang/CharSequence;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lba;->s()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public final varargs a(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lba;->s()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method final a(Landroid/animation/Animator;)V
    .locals 1

    .line 109
    invoke-virtual {p0}, Lba;->F()Lay;

    move-result-object v0

    iput-object p1, v0, Lay;->b:Landroid/animation/Animator;

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lba;->J:Z

    iget-object v0, p0, Lba;->x:Lbn;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lbn;->b:Landroid/app/Activity;

    :goto_0
    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lba;->J:Z

    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Intent;I)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lba;->x:Lbn;

    if-eqz v0, :cond_3

    .line 114
    check-cast v0, Lbb;

    iget-object v0, v0, Lbb;->a:Lbc;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbc;->e:Z

    .line 115
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p2}, Lbc;->a(I)V

    iget-object v3, v0, Lbc;->g:Ltp;

    .line 116
    invoke-virtual {v3}, Ltp;->c()I

    move-result v3

    const v4, 0xfffe

    if-ge v3, v4, :cond_2

    :goto_0
    iget-object v3, v0, Lbc;->g:Ltp;

    iget v5, v0, Lbc;->f:I

    iget-boolean v6, v3, Ltp;->a:Z

    if-eqz v6, :cond_0

    .line 117
    invoke-virtual {v3}, Ltp;->b()V

    :cond_0
    iget-object v6, v3, Ltp;->b:[I

    iget v3, v3, Ltp;->d:I

    .line 118
    invoke-static {v6, v3, v5}, Ltk;->a([III)I

    move-result v3

    if-ltz v3, :cond_1

    iget v3, v0, Lbc;->f:I

    add-int/2addr v3, v1

    rem-int/2addr v3, v4

    iput v3, v0, Lbc;->f:I

    goto :goto_0

    :cond_1
    iget v3, v0, Lbc;->f:I

    iget-object v5, v0, Lbc;->g:Ltp;

    iget-object v6, p0, Lba;->j:Ljava/lang/String;

    .line 119
    invoke-virtual {v5, v3, v6}, Ltp;->a(ILjava/lang/Object;)V

    iget v5, v0, Lbc;->f:I

    add-int/2addr v5, v1

    rem-int/2addr v5, v4

    iput v5, v0, Lbc;->f:I

    add-int/2addr v3, v1

    shl-int/lit8 v1, v3, 0x10

    int-to-char p2, p2

    add-int/2addr v1, p2

    .line 120
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x0

    .line 121
    invoke-virtual {v0, p1, v1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iput-boolean v2, v0, Lbc;->e:Z

    return-void

    .line 121
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Too many pending Fragment activity results."

    .line 122
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput-boolean v2, v0, Lbc;->e:Z

    .line 123
    throw p1

    .line 0
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    .line 114
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not attached to Activity"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lba;->J:Z

    .line 80
    invoke-virtual {p0, p1}, Lba;->e(Landroid/os/Bundle;)V

    iget-object p1, p0, Lba;->y:Lbx;

    iget v0, p1, Lbx;->i:I

    if-lez v0, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-virtual {p1}, Lbx;->f()V

    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    iget-object p3, p0, Lba;->y:Lbx;

    .line 85
    invoke-virtual {p3}, Lbx;->noteStateNotSaved()V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lba;->u:Z

    new-instance p3, Lda;

    .line 86
    invoke-direct {p3}, Lda;-><init>()V

    iput-object p3, p0, Lba;->V:Lda;

    .line 87
    invoke-virtual {p0, p1, p2}, Lba;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lba;->L:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lba;->V:Lda;

    .line 88
    invoke-virtual {p1}, Lda;->a()V

    iget-object p1, p0, Lba;->L:Landroid/view/View;

    iget-object p2, p0, Lba;->V:Lda;

    .line 89
    invoke-static {p1, p2}, Ley;->a(Landroid/view/View;Ll;)V

    iget-object p1, p0, Lba;->L:Landroid/view/View;

    .line 90
    invoke-static {p1, p0}, Ley;->a(Landroid/view/View;Lak;)V

    iget-object p1, p0, Lba;->L:Landroid/view/View;

    .line 91
    invoke-static {p1, p0}, Lyj;->a(Landroid/view/View;Lxa;)V

    iget-object p1, p0, Lba;->W:Lv;

    iget-object p2, p0, Lba;->V:Lda;

    .line 92
    invoke-virtual {p1, p2}, Lv;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lba;->V:Lda;

    iget-object p1, p1, Lda;->a:Lj;

    if-nez p1, :cond_1

    .line 93
    const/4 p1, 0x0

    iput-object p1, p0, Lba;->V:Lda;

    return-void

    .line 92
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 93
    const-string p2, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method final a(Landroid/view/View;)V
    .locals 1

    .line 108
    invoke-virtual {p0}, Lba;->F()Lay;

    move-result-object v0

    iput-object p1, v0, Lay;->a:Landroid/view/View;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lba;->A:I

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lba;->B:I

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13
    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lba;->C:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lba;->f:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 15
    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lba;->j:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lba;->v:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 17
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lba;->p:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 18
    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lba;->q:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 19
    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lba;->r:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 20
    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lba;->s:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 21
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lba;->D:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 22
    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lba;->E:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 23
    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lba;->I:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 24
    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lba;->H:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 25
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lba;->F:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 26
    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lba;->N:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lba;->w:Lbx;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lba;->w:Lbx;

    .line 28
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lba;->x:Lbn;

    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lba;->x:Lbn;

    .line 30
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lba;->z:Lba;

    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lba;->z:Lba;

    .line 32
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lba;->k:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 33
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lba;->k:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lba;->g:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 34
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lba;->g:Landroid/os/Bundle;

    .line 35
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lba;->h:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 36
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lba;->h:Landroid/util/SparseArray;

    .line 37
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lba;->l:Lba;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lba;->w:Lbx;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lba;->m:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 38
    invoke-virtual {v0, v2}, Lbx;->c(Ljava/lang/String;)Lba;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_6
    move-object v0, v1

    .line 38
    :cond_7
    :goto_0
    if-eqz v0, :cond_8

    .line 39
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTarget="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 40
    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lba;->n:I

    .line 41
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_8
    invoke-virtual {p0}, Lba;->G()I

    move-result v0

    if-eqz v0, :cond_9

    .line 42
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lba;->G()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_9
    iget-object v0, p0, Lba;->K:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    .line 43
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lba;->K:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_a
    iget-object v0, p0, Lba;->L:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 44
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lba;->L:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_b
    invoke-virtual {p0}, Lba;->H()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 45
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lba;->H()Landroid/view/View;

    move-result-object v0

    .line 47
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 48
    invoke-static {p0}, Lwg;->a(Ll;)Lwg;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lwg;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 49
    :cond_d
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lba;->y:Lbx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lba;->y:Lbx;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lbx;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method final a(Z)V
    .locals 1

    .line 111
    invoke-virtual {p0}, Lba;->F()Lay;

    move-result-object v0

    iput-boolean p1, v0, Lay;->i:Z

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final ab()Lj;
    .locals 1

    iget-object v0, p0, Lba;->Y:Lj;

    return-object v0
.end method

.method public final ac()Laj;
    .locals 3

    iget-object v0, p0, Lba;->w:Lbx;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, v0, Lbx;->q:Lcb;

    iget-object v1, v0, Lcb;->f:Ljava/util/HashMap;

    iget-object v2, p0, Lba;->j:Ljava/lang/String;

    .line 66
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laj;

    if-nez v1, :cond_0

    new-instance v1, Laj;

    .line 67
    invoke-direct {v1}, Laj;-><init>()V

    iget-object v0, v0, Lcb;->f:Ljava/util/HashMap;

    iget-object v2, p0, Lba;->j:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 0
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 65
    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lba;->s()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lba;->J:Z

    return-void
.end method

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Lba;->O:Lay;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lba;->F()Lay;

    move-result-object v0

    iput p1, v0, Lay;->c:I

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method final d(I)V
    .locals 1

    iget-object v0, p0, Lba;->O:Lay;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lba;->F()Lay;

    iget-object v0, p0, Lba;->O:Lay;

    iput p1, v0, Lay;->d:I

    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lba;->w:Lbx;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbx;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 110
    const-string v0, "Fragment already added and state has been saved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lba;->k:Landroid/os/Bundle;

    return-void
.end method

.method final e(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 105
    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lba;->y:Lbx;

    .line 106
    invoke-virtual {v0, p1}, Lbx;->a(Landroid/os/Parcelable;)V

    iget-object p1, p0, Lba;->y:Lbx;

    .line 107
    invoke-virtual {p1}, Lbx;->f()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lba;->J:Z

    return-void
.end method

.method public g()Lbj;
    .locals 1

    new-instance v0, Lax;

    .line 8
    invoke-direct {v0, p0}, Lax;-><init>(Lba;)V

    return-object v0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lba;->J:Z

    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lba;->J:Z

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lba;->J:Z

    return-void
.end method

.method public l()Landroid/view/LayoutInflater;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lba;->J()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lwy;
    .locals 1

    iget-object v0, p0, Lba;->X:Lwz;

    iget-object v0, v0, Lwz;->a:Lwy;

    return-object v0
.end method

.method public final n()V
    .locals 2

    new-instance v0, Lj;

    .line 69
    invoke-direct {v0, p0}, Lj;-><init>(Ll;)V

    iput-object v0, p0, Lba;->Y:Lj;

    .line 70
    invoke-static {p0}, Lwz;->a(Lxa;)Lwz;

    move-result-object v0

    iput-object v0, p0, Lba;->X:Lwz;

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, p0, Lba;->Y:Lj;

    new-instance v1, Landroid/support/v4/app/Fragment$2;

    .line 72
    invoke-direct {v1, p0}, Landroid/support/v4/app/Fragment$2;-><init>(Lba;)V

    invoke-virtual {v0, v1}, Lj;->a(Lvx;)V

    return-void
.end method

.method final o()Z
    .locals 1

    iget v0, p0, Lba;->v:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lba;->J:Z

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-virtual {p0}, Lba;->r()Lbc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0, p1, p2, p3}, Lbc;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void

    .line 0
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " not attached to an activity."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lba;->J:Z

    return-void
.end method

.method public final p()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lba;->x:Lbn;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lbn;->c:Landroid/content/Context;

    return-object v0
.end method

.method public final q()Landroid/content/Context;
    .locals 3

    invoke-virtual {p0}, Lba;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    return-object v0

    .line 0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to a context."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final r()Lbc;
    .locals 1

    iget-object v0, p0, Lba;->x:Lbn;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lbn;->b:Landroid/app/Activity;

    check-cast v0, Lbc;

    return-object v0
.end method

.method public final s()Landroid/content/res/Resources;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lba;->q()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final t()Lbx;
    .locals 3

    iget-object v0, p0, Lba;->w:Lbx;

    if-eqz v0, :cond_0

    .line 57
    return-object v0

    .line 0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not associated with a fragment manager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 124
    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, "} ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lba;->j:Ljava/lang/String;

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lba;->A:I

    if-eqz v1, :cond_0

    .line 132
    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lba;->A:I

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lba;->C:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 134
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lba;->C:Ljava/lang/String;

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x7d

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lbx;
    .locals 3

    iget-object v0, p0, Lba;->x:Lbn;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lba;->y:Lbx;

    return-object v0

    .line 0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has not been attached yet."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final v()Z
    .locals 1

    iget-object v0, p0, Lba;->x:Lbn;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lba;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final w()Z
    .locals 4

    iget-object v0, p0, Lba;->z:Lba;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lba;->q:Z

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lba;->w()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :cond_2
    return v1
.end method

.method public final x()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lba;->L:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 104
    return-object v0

    .line 0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not return a View from onCreateView() or this was called before onCreateView()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public y()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lba;->J:Z

    return-void
.end method

.method public z()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lba;->J:Z

    return-void
.end method
