.class Lcom/vkontakte/android/SearchUsersView$3;
.super Ljava/lang/Object;
.source "SearchUsersView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SearchUsersView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SearchUsersView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SearchUsersView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SearchUsersView$3;->this$0:Lcom/vkontakte/android/SearchUsersView;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView$3;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v0}, Lcom/vkontakte/android/SearchUsersView;->access$7(Lcom/vkontakte/android/SearchUsersView;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView$3;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v0}, Lcom/vkontakte/android/SearchUsersView;->access$6(Lcom/vkontakte/android/SearchUsersView;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060123

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    return-void
.end method
