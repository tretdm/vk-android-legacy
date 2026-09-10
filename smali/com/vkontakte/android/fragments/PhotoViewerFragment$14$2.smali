.class Lcom/vkontakte/android/fragments/PhotoViewerFragment$14$2;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;->success(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14$2;->this$1:Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14$2;->this$1:Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;->access$0(Lcom/vkontakte/android/fragments/PhotoViewerFragment$14;)Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$13(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V

    .line 511
    return-void
.end method
