.class Lcom/vkontakte/android/MenuListView$6;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MenuListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MenuListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MenuListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView$6;->this$0:Lcom/vkontakte/android/MenuListView;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 248
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/MenuListView$6;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView$6;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 251
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView$6;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v1}, Lcom/vkontakte/android/MenuListView;->access$11(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/MenuListView$6;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v1}, Lcom/vkontakte/android/MenuListView;->access$11(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;

    move-result-object v1

    const/16 v2, -0x14

    invoke-interface {v1, v2}, Lcom/vkontakte/android/MenuListView$Listener;->onMenuItemSelected(I)V

    .line 252
    :cond_0
    return-void
.end method
