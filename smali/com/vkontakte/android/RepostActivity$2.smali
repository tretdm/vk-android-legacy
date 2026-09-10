.class Lcom/vkontakte/android/RepostActivity$2;
.super Ljava/lang/Object;
.source "RepostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/RepostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/RepostActivity;

.field final synthetic val$acts:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/RepostActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/vkontakte/android/RepostActivity$2;->this$0:Lcom/vkontakte/android/RepostActivity;

    iput-object p2, p0, Lcom/vkontakte/android/RepostActivity$2;->val$acts:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 64
    iget-object v1, p0, Lcom/vkontakte/android/RepostActivity$2;->val$acts:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    .local v0, "act":Ljava/lang/String;
    const-string v1, "me"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/vkontakte/android/RepostActivity$2;->this$0:Lcom/vkontakte/android/RepostActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/RepostActivity;->access$000(Lcom/vkontakte/android/RepostActivity;I)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const-string v1, "group"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    iget-object v1, p0, Lcom/vkontakte/android/RepostActivity$2;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v1}, Lcom/vkontakte/android/RepostActivity;->access$100(Lcom/vkontakte/android/RepostActivity;)V

    goto :goto_0

    .line 69
    :cond_2
    const-string v1, "msg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/vkontakte/android/RepostActivity$2;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v1}, Lcom/vkontakte/android/RepostActivity;->access$200(Lcom/vkontakte/android/RepostActivity;)V

    goto :goto_0
.end method
