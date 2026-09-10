.class Lcom/vkontakte/android/NewPostActivity$11;
.super Ljava/lang/Object;
.source "NewPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewPostActivity;->showOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewPostActivity;

.field private final synthetic val$acts:Ljava/util/ArrayList;

.field private final synthetic val$opts:[Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity;Ljava/util/ArrayList;[Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$11;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iput-object p2, p0, Lcom/vkontakte/android/NewPostActivity$11;->val$acts:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkontakte/android/NewPostActivity$11;->val$opts:[Z

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 477
    const/4 v1, 0x0

    .line 478
    .local v1, "w":I
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity$11;->val$acts:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 479
    .local v0, "s":Ljava/lang/String;
    const-string v2, "friendsonly"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 480
    const/4 v1, 0x0

    .line 486
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity$11;->val$opts:[Z

    aput-boolean p3, v2, v1

    .line 487
    return-void

    .line 481
    :cond_1
    const-string v2, "twitter"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 482
    const/4 v1, 0x1

    .line 483
    goto :goto_0

    :cond_2
    const-string v2, "fb"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 484
    const/4 v1, 0x2

    goto :goto_0
.end method
