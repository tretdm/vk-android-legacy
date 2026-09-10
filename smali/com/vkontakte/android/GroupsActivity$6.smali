.class Lcom/vkontakte/android/GroupsActivity$6;
.super Ljava/lang/Object;
.source "GroupsActivity.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/GroupsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/GroupsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/GroupsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 203
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    iget-boolean v0, v0, Lcom/vkontakte/android/GroupsActivity;->searchLoading:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    iget-boolean v0, v0, Lcom/vkontakte/android/GroupsActivity;->searchPreloading:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    iget-boolean v0, v0, Lcom/vkontakte/android/GroupsActivity;->searchMoreAvailable:Z

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    iget-boolean v0, v0, Lcom/vkontakte/android/GroupsActivity;->searchPreloading:Z

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vkontakte/android/GroupsActivity;->searchPreloading:Z

    .line 206
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    iput-boolean v3, v0, Lcom/vkontakte/android/GroupsActivity;->searchPreloadOnReady:Z

    .line 217
    :cond_1
    :goto_0
    return-void

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$11(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "append search results "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$4(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$11(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$4(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/GroupsActivity;->access$11(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 209
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$12(Lcom/vkontakte/android/GroupsActivity;)V

    .line 210
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$11(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 211
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    iput-boolean v3, v0, Lcom/vkontakte/android/GroupsActivity;->searchPreloading:Z

    .line 212
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$15(Lcom/vkontakte/android/GroupsActivity;)V

    goto :goto_0

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$15(Lcom/vkontakte/android/GroupsActivity;)V

    goto :goto_0
.end method
