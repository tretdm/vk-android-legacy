.class Lcom/vkontakte/android/PhotoViewerActivity$16;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity;->onNavNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$16;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$16;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoViewerActivity;->onNavNext()V

    .line 484
    return-void
.end method
