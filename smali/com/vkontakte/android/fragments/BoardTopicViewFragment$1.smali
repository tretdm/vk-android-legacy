.class Lcom/vkontakte/android/fragments/BoardTopicViewFragment$1;
.super Ljava/lang/Object;
.source "BoardTopicViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$1;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$1;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$4(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/WriteBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/WriteBar;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$1;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$5(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$1;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$6(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)V

    goto :goto_0
.end method
