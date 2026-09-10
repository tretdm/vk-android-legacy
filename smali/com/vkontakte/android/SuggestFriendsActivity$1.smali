.class Lcom/vkontakte/android/SuggestFriendsActivity$1;
.super Ljava/lang/Object;
.source "SuggestFriendsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SuggestFriendsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SuggestFriendsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SuggestFriendsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SuggestFriendsActivity$1;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/SuggestFriendsActivity$1;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    const-class v2, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "wall_id"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/vkontakte/android/SuggestFriendsActivity$1;->this$0:Lcom/vkontakte/android/SuggestFriendsActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/SuggestFriendsActivity;->startActivity(Landroid/content/Intent;)V

    .line 55
    return-void
.end method
