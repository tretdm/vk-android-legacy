.class final Lcom/vkontakte/android/data/Posts$2;
.super Ljava/lang/Object;
.source "Posts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Posts;->editRepostComment(Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Landroid/app/Activity;

.field final synthetic val$e:Lcom/vkontakte/android/NewsEntry;

.field final synthetic val$edit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsEntry;Landroid/widget/EditText;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/vkontakte/android/data/Posts$2;->val$e:Lcom/vkontakte/android/NewsEntry;

    iput-object p2, p0, Lcom/vkontakte/android/data/Posts$2;->val$edit:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/vkontakte/android/data/Posts$2;->val$act:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lcom/vkontakte/android/data/Posts$2;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget-object v1, p0, Lcom/vkontakte/android/data/Posts$2;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/data/Posts$2;->val$act:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/data/Posts;->access$000(Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;Landroid/app/Activity;)V

    .line 226
    return-void
.end method
