.class Lcom/vkontakte/android/fragments/AudioListFragment$4$1;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AudioListFragment$4;->onQueryTextChange(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/AudioListFragment$4;

.field final synthetic val$newText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioListFragment$4;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/AudioListFragment$4;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$4$1;->val$newText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 280
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run search loader! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$4$1;->val$newText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/AudioListFragment$4;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment$4;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1302(Lcom/vkontakte/android/fragments/AudioListFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 282
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/AudioListFragment$4;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/AudioListFragment$4;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$4$1;->val$newText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$1500(Lcom/vkontakte/android/fragments/AudioListFragment;Ljava/lang/String;)V

    .line 283
    return-void
.end method
