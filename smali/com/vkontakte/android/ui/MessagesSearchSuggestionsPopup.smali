.class public Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;
.super Ljava/lang/Object;
.source "MessagesSearchSuggestionsPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$DropDownListView;,
        Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SearchPhotosAdapter;,
        Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;

.field private c:Landroid/content/Context;

.field private footerView:Landroid/widget/TextView;

.field private friends:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private indexer:Lcom/vkontakte/android/SearchIndexer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkontakte/android/SearchIndexer",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private list:Landroid/widget/ListView;

.field private pendingSearch:Ljava/lang/Runnable;

.field private req:Lcom/vkontakte/android/APIRequest;

.field private searchView:Lcom/actionbarsherlock/widget/SearchView;

.field private selListener:Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;

.field private users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/widget/SearchView;Landroid/content/Context;Z)V
    .locals 8
    .param p1, "s"    # Lcom/actionbarsherlock/widget/SearchView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "allowMsgs"    # Z

    .prologue
    const/4 v7, -0x1

    const/high16 v6, 0x41400000    # 12.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->users:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->friends:Ljava/util/ArrayList;

    .line 50
    iput-object p1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    .line 51
    iput-object p2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->c:Landroid/content/Context;

    .line 52
    new-instance v1, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$DropDownListView;

    invoke-direct {v1, p0, p2}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$DropDownListView;-><init>(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    .line 54
    new-instance v1, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$1;

    invoke-direct {v1, p0, p2}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$1;-><init>(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    .line 59
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/high16 v3, 0x42280000    # 42.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v2, v7, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 61
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 62
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 63
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 64
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 65
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    if-eqz p3, :cond_0

    .line 67
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;

    invoke-direct {v2, p0, v5}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;-><init>(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;)V

    iput-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->adapter:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    const v2, 0x7f0200da

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(I)V

    .line 71
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x1a1a1b

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 73
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 74
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 75
    .local v0, "pad":I
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v4, v0, v4}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 76
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 78
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$2;-><init>(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->onWindowFocusChanged(Z)V

    .line 104
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->friends:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/vkontakte/android/data/Friends;->getFriends(Ljava/util/ArrayList;)V

    .line 105
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$3;-><init>(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 113
    new-instance v1, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v2, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SearchPhotosAdapter;

    invoke-direct {v2, p0, v5}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SearchPhotosAdapter;-><init>(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SearchPhotosAdapter;)V

    iget-object v3, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    invoke-direct {v1, v2, v3, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 114
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->users:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->updateList()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->selListener:Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Lcom/actionbarsherlock/widget/SearchView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->friends:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;Lcom/vkontakte/android/SearchIndexer;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->indexer:Lcom/vkontakte/android/SearchIndexer;

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->searchOnServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->req:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method private searchOnServer(Ljava/lang/String;)V
    .locals 2
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 154
    new-instance v0, Lcom/vkontakte/android/api/MessagesSearchDialogs;

    invoke-direct {v0, p1}, Lcom/vkontakte/android/api/MessagesSearchDialogs;-><init>(Ljava/lang/String;)V

    .line 155
    new-instance v1, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$5;-><init>(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesSearchDialogs;->setCallback(Lcom/vkontakte/android/api/MessagesSearchDialogs$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 154
    iput-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->req:Lcom/vkontakte/android/APIRequest;

    .line 176
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->req:Lcom/vkontakte/android/APIRequest;

    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->pendingSearch:Ljava/lang/Runnable;

    .line 178
    return-void
.end method

.method private updateList()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->adapter:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;->notifyDataSetChanged()V

    .line 182
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 183
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 186
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 187
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 192
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 236
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 240
    return-void
.end method

.method public setSelectionListener(Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;)V
    .locals 0
    .param p1, "sl"    # Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->selListener:Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;

    .line 118
    return-void
.end method

.method public updateQuery(Ljava/lang/String;)V
    .locals 4
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 125
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update query "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->indexer:Lcom/vkontakte/android/SearchIndexer;

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060120

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " <b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<"

    const-string v3, "&lt;"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</b> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060121

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->users:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->indexer:Lcom/vkontakte/android/SearchIndexer;

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/SearchIndexer;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 130
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->updateList()V

    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->req:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->req:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->req:Lcom/vkontakte/android/APIRequest;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->pendingSearch:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->pendingSearch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 138
    :cond_1
    new-instance v0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;-><init>(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->pendingSearch:Ljava/lang/Runnable;

    .line 143
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->pendingSearch:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 151
    :cond_2
    :goto_0
    return-void

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method
