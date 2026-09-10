.class Lcom/vkontakte/android/DocumentsActivity$DocsAdapter;
.super Landroid/widget/BaseAdapter;
.source "DocumentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/DocumentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DocsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/DocumentsActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/DocumentsActivity;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/vkontakte/android/DocumentsActivity$DocsAdapter;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/DocumentsActivity;Lcom/vkontakte/android/DocumentsActivity$DocsAdapter;)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/vkontakte/android/DocumentsActivity$DocsAdapter;-><init>(Lcom/vkontakte/android/DocumentsActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/vkontakte/android/DocumentsActivity$DocsAdapter;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/DocumentsActivity;->access$0(Lcom/vkontakte/android/DocumentsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 167
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 172
    move-object v1, p2

    .line 173
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_0

    .line 174
    iget-object v2, p0, Lcom/vkontakte/android/DocumentsActivity$DocsAdapter;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    const v3, 0x7f030015

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 175
    new-instance v2, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-direct {v2}, Lcom/vkontakte/android/ui/HighlightDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/DocumentsActivity$DocsAdapter;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/DocumentsActivity;->access$0(Lcom/vkontakte/android/DocumentsActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Document;

    .line 178
    .local v0, "doc":Lcom/vkontakte/android/api/Document;
    const v2, 0x7f060064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/vkontakte/android/api/Document;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    const v2, 0x7f060063

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/vkontakte/android/api/Document;->ext:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const v2, 0x7f060065

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/vkontakte/android/api/Document;->size_str:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    return-object v1
.end method
