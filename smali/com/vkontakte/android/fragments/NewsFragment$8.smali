.class Lcom/vkontakte/android/fragments/NewsFragment$8;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/NewsFragment;->showNew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/NewsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/NewsFragment;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NewsFragment$8;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 433
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment$8;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NewsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 434
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment$8;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NewsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 435
    return-void
.end method
