.class public final synthetic Landroid/car/input/-$$Lambda$CarInputManager$V9NyjNRK9diB4sklxJyVfmkKhcA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/input/CarInputManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:[I


# direct methods
.method public synthetic constructor <init>(Landroid/car/input/CarInputManager;I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/input/-$$Lambda$CarInputManager$V9NyjNRK9diB4sklxJyVfmkKhcA;->f$0:Landroid/car/input/CarInputManager;

    iput p2, p0, Landroid/car/input/-$$Lambda$CarInputManager$V9NyjNRK9diB4sklxJyVfmkKhcA;->f$1:I

    iput-object p3, p0, Landroid/car/input/-$$Lambda$CarInputManager$V9NyjNRK9diB4sklxJyVfmkKhcA;->f$2:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/car/input/-$$Lambda$CarInputManager$V9NyjNRK9diB4sklxJyVfmkKhcA;->f$0:Landroid/car/input/CarInputManager;

    iget v1, p0, Landroid/car/input/-$$Lambda$CarInputManager$V9NyjNRK9diB4sklxJyVfmkKhcA;->f$1:I

    iget-object p0, p0, Landroid/car/input/-$$Lambda$CarInputManager$V9NyjNRK9diB4sklxJyVfmkKhcA;->f$2:[I

    invoke-virtual {v0, v1, p0}, Landroid/car/input/CarInputManager;->lambda$dispatchOnCaptureStateChanged$2$CarInputManager(I[I)V

    return-void
.end method
