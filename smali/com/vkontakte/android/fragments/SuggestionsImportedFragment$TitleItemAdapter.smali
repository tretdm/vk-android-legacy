.class Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$TitleItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "SuggestionsImportedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TitleItemAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$TitleItemAdapter;->this$0:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$TitleItemAdapter;)V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$TitleItemAdapter;-><init>(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$TitleItemAdapter;->this$0:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->access$0(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 244
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 257
    if-nez p2, :cond_0

    .line 258
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$TitleItemAdapter;->this$0:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f03004a

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 259
    .local v0, "txt":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$TitleItemAdapter;->this$0:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    const v2, 0x7f0802b8

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    .end local v0    # "txt":Landroid/widget/TextView;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method
