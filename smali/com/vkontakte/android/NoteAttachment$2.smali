.class Lcom/vkontakte/android/NoteAttachment$2;
.super Ljava/lang/Object;
.source "NoteAttachment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NoteAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NoteAttachment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NoteAttachment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/vkontakte/android/NoteAttachment$2;->this$0:Lcom/vkontakte/android/NoteAttachment;

    iput-object p2, p0, Lcom/vkontakte/android/NoteAttachment$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/NoteAttachment$2;->val$context:Landroid/content/Context;

    const-class v2, Lcom/vkontakte/android/WikiViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "oid"

    iget-object v2, p0, Lcom/vkontakte/android/NoteAttachment$2;->this$0:Lcom/vkontakte/android/NoteAttachment;

    iget v2, v2, Lcom/vkontakte/android/NoteAttachment;->oid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    const-string v1, "nid"

    iget-object v2, p0, Lcom/vkontakte/android/NoteAttachment$2;->this$0:Lcom/vkontakte/android/NoteAttachment;

    iget v2, v2, Lcom/vkontakte/android/NoteAttachment;->nid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    const-string v1, "title"

    iget-object v2, p0, Lcom/vkontakte/android/NoteAttachment$2;->this$0:Lcom/vkontakte/android/NoteAttachment;

    iget-object v2, v2, Lcom/vkontakte/android/NoteAttachment;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/vkontakte/android/NoteAttachment$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method
