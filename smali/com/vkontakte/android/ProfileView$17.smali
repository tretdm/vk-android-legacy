.class Lcom/vkontakte/android/ProfileView$17;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileView;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfileView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView$17;->this$0:Lcom/vkontakte/android/ProfileView;

    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 893
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$17;->this$0:Lcom/vkontakte/android/ProfileView;

    iget-object v0, v0, Lcom/vkontakte/android/ProfileView;->news:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$17;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$17;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$17;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$17;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$17;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$35(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/ui/MergeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MergeAdapter;->notifyDataSetChanged()V

    .line 904
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$17;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$17;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$17;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$12(Lcom/vkontakte/android/ProfileView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$17;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$30(Lcom/vkontakte/android/ProfileView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 901
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$17;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$35(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/ui/MergeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MergeAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
