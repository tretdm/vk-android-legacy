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

.field private emptyView:Landroid/widget/TextView;

.field private footerView:Landroid/widget/TextView;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private list:Landroid/widget/ListView;

.field private pendingSearch:Ljava/lang/Runnable;

.field private progress:Landroid/widget/ProgressBar;

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

.field private wrap:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/widget/SearchView;Landroid/content/Context;Z)V
    .locals 10
    .param p1, "s"    # Lcom/actionbarsherlock/widget/SearchView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "allowMsgs"    # Z

    .prologue
    const/high16 v9, 0x41400000    # 12.0f

    const/4 v8, 0x0

    const/16 v7, 0x8

    const/16 v6, 0x11

    const/4 v5, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->users:Ljava/util/ArrayList;

    .line 54
    iput-object p1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    .line 55
    iput-object p2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->c:Landroid/content/Context;

    .line 56
    new-instance v1, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$DropDownListView;

    invoke-direct {v1, p0, p2}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$DropDownListView;-><init>(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    .line 58
    new-instance v1, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$1;

    invoke-direct {v1, p0, p2}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$1;-><init>(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    .line 63
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42280000    # 42.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 65
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 66
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 67
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 68
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 69
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    if-eqz p3, :cond_0

    .line 71
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;

    invoke-direct {v2, p0, v8}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;-><init>(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;)V

    iput-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->adapter:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    const v2, 0x7f0200e6

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(I)V

    .line 75
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x1a1a1b

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 77
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 78
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 79
    .local v0, "pad":I
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v5, v0, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 82
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$2;-><init>(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 107
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->onWindowFocusChanged(Z)V

    .line 108
    new-instance v1, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v2, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SearchPhotosAdapter;

    invoke-direct {v2, p0, v8}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SearchPhotosAdapter;-><init>(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SearchPhotosAdapter;)V

    iget-object v3, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    invoke-direct {v1, v2, v3, v8}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 109
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->emptyView:Landroid/widget/TextView;

    .line 110
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->emptyView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->c:Landroid/content/Context;

    const v3, 0x7f0a0082

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 111
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 112
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->emptyView:Landroid/widget/TextView;

    const v2, 0x7f0800bf

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 114
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->progress:Landroid/widget/ProgressBar;

    .line 115
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 117
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->wrap:Landroid/widget/FrameLayout;

    .line 118
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->wrap:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 119
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->wrap:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->emptyView:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->wrap:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->progress:Landroid/widget/ProgressBar;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->wrap:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 122
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->users:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->emptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->wrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->selListener:Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Lcom/actionbarsherlock/widget/SearchView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->searchOnServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->req:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->updateList()V

    return-void
.end method

.method private searchOnServer(Ljava/lang/String;)V
    .locals 2
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v0, Lcom/vkontakte/android/api/MessagesSearchDialogs;

    invoke-direct {v0, p1}, Lcom/vkontakte/android/api/MessagesSearchDialogs;-><init>(Ljava/lang/String;)V

    .line 167
    new-instance v1, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;-><init>(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesSearchDialogs;->setCallback(Lcom/vkontakte/android/api/MessagesSearchDialogs$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 166
    iput-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->req:Lcom/vkontakte/android/APIRequest;

    .line 192
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->req:Lcom/vkontakte/android/APIRequest;

    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->pendingSearch:Ljava/lang/Runnable;

    .line 194
    return-void
.end method

.method private updateList()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->adapter:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;->notifyDataSetChanged()V

    .line 198
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 199
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->wrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 202
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->wrap:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 203
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 204
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->wrap:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 208
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
    .line 251
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 252
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 256
    return-void
.end method

.method public setSelectionListener(Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;)V
    .locals 0
    .param p1, "sl"    # Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->selListener:Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;

    .line 127
    return-void
.end method

.method public updateQuery(Ljava/lang/String;)V
    .locals 6
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x8

    .line 134
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "update query "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 138
    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080139

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " <b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<"

    const-string v5, "&lt;"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</b> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08013a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 140
    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->users:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/vkontakte/android/data/Friends;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 141
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->updateList()V

    .line 142
    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->req:Lcom/vkontakte/android/APIRequest;

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->req:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 144
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->req:Lcom/vkontakte/android/APIRequest;

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->pendingSearch:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 147
    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->pendingSearch:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 149
    :cond_1
    new-instance v2, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$3;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$3;-><init>(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->pendingSearch:Ljava/lang/Runnable;

    .line 154
    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->progress:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    if-le v3, v4, :cond_3

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->pendingSearch:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 157
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->wrap:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->wrap:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 163
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 154
    goto :goto_0

    .line 161
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->wrap:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1
.end method
