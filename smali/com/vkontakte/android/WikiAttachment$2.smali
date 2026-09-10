.class Lcom/vkontakte/android/WikiAttachment$2;
.super Ljava/lang/Object;
.source "WikiAttachment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WikiAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WikiAttachment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WikiAttachment;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/vkontakte/android/WikiAttachment$2;->this$0:Lcom/vkontakte/android/WikiAttachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/WikiViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "oid"

    iget-object v2, p0, Lcom/vkontakte/android/WikiAttachment$2;->this$0:Lcom/vkontakte/android/WikiAttachment;

    iget v2, v2, Lcom/vkontakte/android/WikiAttachment;->oid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    const-string v1, "pid"

    iget-object v2, p0, Lcom/vkontakte/android/WikiAttachment$2;->this$0:Lcom/vkontakte/android/WikiAttachment;

    iget v2, v2, Lcom/vkontakte/android/WikiAttachment;->pid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    const-string v1, "title"

    iget-object v2, p0, Lcom/vkontakte/android/WikiAttachment$2;->this$0:Lcom/vkontakte/android/WikiAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/WikiAttachment;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, "section"

    iget-object v2, p0, Lcom/vkontakte/android/WikiAttachment$2;->this$0:Lcom/vkontakte/android/WikiAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/WikiAttachment;->section:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 74
    return-void
.end method
