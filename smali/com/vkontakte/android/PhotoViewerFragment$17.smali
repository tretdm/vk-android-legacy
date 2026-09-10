.class Lcom/vkontakte/android/PhotoViewerFragment$17;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerFragment;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerFragment$17;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$17;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerFragment;->access$15(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoViewerFragment$PhotoCommentsAdapter;->notifyDataSetChanged()V

    .line 537
    return-void
.end method
