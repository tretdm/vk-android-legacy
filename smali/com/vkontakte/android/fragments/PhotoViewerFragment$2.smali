.class Lcom/vkontakte/android/fragments/PhotoViewerFragment$2;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoViewerFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 195
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-static {v0, v1, v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$3(Lcom/vkontakte/android/fragments/PhotoViewerFragment;ZZ)V

    .line 196
    return-void
.end method
