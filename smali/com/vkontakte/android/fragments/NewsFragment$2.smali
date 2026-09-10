.class Lcom/vkontakte/android/fragments/NewsFragment$2;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/NewsFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/NewsFragment;

.field final synthetic val$act:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/NewsFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NewsFragment$2;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/NewsFragment$2;->val$act:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment$2;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/NewsFragment;->access$200(Lcom/vkontakte/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/vkontakte/android/cache/NewsfeedCache;->getLists()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 185
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment$2;->val$act:Landroid/app/Activity;

    new-instance v1, Lcom/vkontakte/android/fragments/NewsFragment$2$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/NewsFragment$2$1;-><init>(Lcom/vkontakte/android/fragments/NewsFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 204
    return-void
.end method
