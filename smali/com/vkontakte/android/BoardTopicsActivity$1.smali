.class Lcom/vkontakte/android/BoardTopicsActivity$1;
.super Ljava/lang/Object;
.source "BoardTopicsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/BoardTopicsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/BoardTopicsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BoardTopicsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/BoardTopicsActivity$1;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/BoardTopicsActivity$1;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    const-class v2, Lcom/vkontakte/android/BoardCreateTopicActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "gid"

    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicsActivity$1;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/BoardTopicsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "gid"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    iget-object v1, p0, Lcom/vkontakte/android/BoardTopicsActivity$1;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/vkontakte/android/BoardTopicsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 110
    return-void
.end method
