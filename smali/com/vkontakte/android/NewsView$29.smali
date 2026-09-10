.class Lcom/vkontakte/android/NewsView$29;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView;->editRepostComment(Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsView;

.field private final synthetic val$e:Lcom/vkontakte/android/NewsEntry;

.field private final synthetic val$edit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$29;->this$0:Lcom/vkontakte/android/NewsView;

    iput-object p2, p0, Lcom/vkontakte/android/NewsView$29;->val$e:Lcom/vkontakte/android/NewsEntry;

    iput-object p3, p0, Lcom/vkontakte/android/NewsView$29;->val$edit:Landroid/widget/EditText;

    .line 1441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$29;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v1, p0, Lcom/vkontakte/android/NewsView$29;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$29;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/NewsView;->access$19(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;)V

    .line 1445
    return-void
.end method
