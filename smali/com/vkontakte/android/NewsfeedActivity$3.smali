.class Lcom/vkontakte/android/NewsfeedActivity$3;
.super Ljava/lang/Object;
.source "NewsfeedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsfeedActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsfeedActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsfeedActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsfeedActivity$3;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedActivity$3;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    const-class v2, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedActivity$3;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/NewsfeedActivity;->startActivity(Landroid/content/Intent;)V

    .line 144
    return-void
.end method
