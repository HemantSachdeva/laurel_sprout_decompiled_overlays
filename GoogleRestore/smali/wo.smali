.class public final Lwo;
.super Landroid/database/ContentObserver;
.source "PG"


# instance fields
.field final synthetic a:Lwq;


# direct methods
.method public constructor <init>(Lwq;)V
    .locals 0

    iput-object p1, p0, Lwo;->a:Lwq;

    new-instance p1, Landroid/os/Handler;

    .line 1
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onChange(Z)V
    .locals 0

    iget-object p1, p0, Lwo;->a:Lwq;

    .line 2
    invoke-virtual {p1}, Lwq;->i()V

    return-void
.end method
