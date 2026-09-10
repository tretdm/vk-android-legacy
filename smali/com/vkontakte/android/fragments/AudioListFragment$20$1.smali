.class Lcom/vkontakte/android/fragments/AudioListFragment$20$1;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AudioListFragment$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/AudioListFragment$20;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioListFragment$20;)V
    .locals 0

    .prologue
    .line 878
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$20$1;->this$1:Lcom/vkontakte/android/fragments/AudioListFragment$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$20$1;->this$1:Lcom/vkontakte/android/fragments/AudioListFragment$20;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment$20;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->updateList()V

    .line 880
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$20$1;->this$1:Lcom/vkontakte/android/fragments/AudioListFragment$20;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment$20;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->showList()V

    .line 881
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$20$1;->this$1:Lcom/vkontakte/android/fragments/AudioListFragment$20;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment$20;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment;->refreshing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$20$1;->this$1:Lcom/vkontakte/android/fragments/AudioListFragment$20;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment$20;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->refreshDone()V

    .line 882
    :cond_0
    return-void
.end method
