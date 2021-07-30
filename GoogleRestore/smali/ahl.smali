.class final synthetic Lahl;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/Supplier;


# instance fields
.field private final a:Laho;


# direct methods
.method public constructor <init>(Laho;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lahl;->a:Laho;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lahl;->a:Laho;

    new-instance v1, Lahr;

    new-instance v2, Landroid/app/backup/BackupManager;

    invoke-direct {v2, v0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lahr;-><init>(Landroid/app/backup/BackupManager;)V

    return-object v1
.end method
