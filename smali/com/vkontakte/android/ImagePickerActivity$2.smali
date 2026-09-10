.class Lcom/vkontakte/android/ImagePickerActivity$2;
.super Ljava/lang/Object;
.source "ImagePickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ImagePickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ImagePickerActivity;

.field final synthetic val$acts:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ImagePickerActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vkontakte/android/ImagePickerActivity$2;->this$0:Lcom/vkontakte/android/ImagePickerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/ImagePickerActivity$2;->val$acts:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 61
    iget-object v1, p0, Lcom/vkontakte/android/ImagePickerActivity$2;->val$acts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_3

    .line 62
    iget-object v1, p0, Lcom/vkontakte/android/ImagePickerActivity$2;->val$acts:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    .local v0, "a":Ljava/lang/String;
    const-string v1, "g"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/vkontakte/android/ImagePickerActivity$2;->this$0:Lcom/vkontakte/android/ImagePickerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ImagePickerActivity;->access$000(Lcom/vkontakte/android/ImagePickerActivity;)V

    .line 73
    .end local v0    # "a":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 65
    .restart local v0    # "a":Ljava/lang/String;
    :cond_1
    const-string v1, "c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/vkontakte/android/ImagePickerActivity$2;->this$0:Lcom/vkontakte/android/ImagePickerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ImagePickerActivity;->access$100(Lcom/vkontakte/android/ImagePickerActivity;)V

    goto :goto_0

    .line 67
    :cond_2
    const-string v1, "a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/vkontakte/android/ImagePickerActivity$2;->this$0:Lcom/vkontakte/android/ImagePickerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ImagePickerActivity;->access$200(Lcom/vkontakte/android/ImagePickerActivity;)V

    goto :goto_0

    .line 71
    .end local v0    # "a":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/ImagePickerActivity$2;->this$0:Lcom/vkontakte/android/ImagePickerActivity;

    add-int/lit8 v2, p2, -0x2

    invoke-static {v1, v2}, Lcom/vkontakte/android/ImagePickerActivity;->access$300(Lcom/vkontakte/android/ImagePickerActivity;I)V

    goto :goto_0
.end method
